import 'package:geolocator/geolocator.dart';
import 'package:nammaooru_nearu/data/models/place_autocomplete.dart';
import 'package:nammaooru_nearu/data/services/location_service.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationService _service = LocationService();
  LocationRepositoryImpl();
  @override
  Future<Position?> getCurrentLocation() {
    return _service.getCurrentLocationService();
  }

  @override
  Future<String> getAddressFromLatLng(double latitude, double longitude) {
    return _service.getAddressFromLatLng(latitude, longitude);
  }

  @override
  Future<String> getAreaFromLatLng(double latitude, double longitude) {
    return _service.getAreafromLatLng(latitude, longitude);
  }

  @override
  Future<Map<String, dynamic>> getPlaces(String input) {
    return _service.getPlace(input);
  }

  @override
  Future<List<PlaceAutocomplete>> getAutocomplete(String search) async {
    return _service.getPlaceAutocompleteList(search);
  }
}

abstract class LocationRepository {
  Future<Position?> getCurrentLocation();
  Future<String> getAddressFromLatLng(double latitude, double longitude);
  Future<String> getAreaFromLatLng(double latitude, double longitude);
  Future<Map<String, dynamic>> getPlaces(String input);
  Future<List<PlaceAutocomplete>> getAutocomplete(String search);
}
