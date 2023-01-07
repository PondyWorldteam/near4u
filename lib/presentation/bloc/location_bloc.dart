import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nammaooru_nearu/data/models/place_autocomplete.dart';
import 'package:nammaooru_nearu/data/repo/location_repository_impl.dart';
part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationValidateState> {
  final LocationRepository _locationRepository;
  LocationBloc(this._locationRepository)
      : super(const LocationValidateState()) {
    on<GetCurrentLocationEvent>(_getCurrentLocation);
    on<SearchLocationEvent>(_searchLocation);
    on<SearchTextChangeEvent>(_searchTextChange);
    on<PermissionRequestEvent>(_onPermissionRequest);
    on<UpdateMarketLocationEvent>(_onUpdateMarkerLocation);
  }
  _getCurrentLocation(GetCurrentLocationEvent event,
      Emitter<LocationValidateState> emit) async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(state.copyWith(locationStatus: LocationStatus.denied));
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(state.copyWith(locationStatus: LocationStatus.denied));
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(state.copyWith(locationStatus: LocationStatus.deniedForever));
      } else if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        final Position? position =
            await _locationRepository.getCurrentLocation();

        if (position != null) {
          final String address = await _locationRepository.getAddressFromLatLng(
              position.latitude, position.longitude);
          final String area = await _locationRepository.getAreaFromLatLng(
              position.latitude, position.longitude);

          emit(state.copyWith(
              area: area,
              address: address,
              lat: position.latitude,
              long: position.longitude,
              locationStatus: LocationStatus.loaded));
        }
      }

      // print(_position);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  _onPermissionRequest(
      PermissionRequestEvent event, Emitter<LocationValidateState> emit) async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(state.copyWith(locationStatus: LocationStatus.denied));
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(state.copyWith(locationStatus: LocationStatus.deniedForever));
      } else if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        emit(state.copyWith(
            locationStatus: LocationStatus.loaded,
            lat: state.lat,
            long: state.long,
            address: state.address,
            area: state.area));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  _searchLocation(
      SearchLocationEvent event, Emitter<LocationValidateState> emit) async {
    try {
      emit(state.copyWith(locationStatus: LocationStatus.loading));
      Map<String, dynamic> places =
          await _locationRepository.getPlaces(event.text);
      final double lat = places['geometry']['location']['lat'];
      final double lng = places['geometry']['location']['lng'];
      final String address =
          await _locationRepository.getAddressFromLatLng(lat, lng);
      final String area = await _locationRepository.getAreaFromLatLng(lat, lng);
      emit(state.copyWith(
        lat: lat,
        long: lng,
        address: address,
        area: area,
        autocompleteList: [],
        locationStatus: LocationStatus.loaded,
      ));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  _searchTextChange(
      SearchTextChangeEvent event, Emitter<LocationValidateState> emit) async {
    try {
      List<PlaceAutocomplete> autocompleteList =
          await _locationRepository.getAutocomplete(event.searchText);
      if (kDebugMode) {
        print("Autocomplete data $autocompleteList");
      }
      emit(state.copyWith(
          locationStatus: LocationStatus.loaded,
          autocompleteList: autocompleteList));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  _onUpdateMarkerLocation(UpdateMarketLocationEvent event,
      Emitter<LocationValidateState> emit) async {
    try {
      final String address =
          await _locationRepository.getAddressFromLatLng(event.lat, event.lng);
      final String area =
          await _locationRepository.getAreaFromLatLng(event.lat, event.lng);
      emit(state.copyWith(
          locationStatus: LocationStatus.loaded,
          lat: event.lat,
          long: event.lng,
          address: address,
          area: area));
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
