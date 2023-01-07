part of 'location_bloc.dart';

enum LocationStatus {
  loading,
  loaded,
  failed,
  search,
  denied,
  deniedForever,
  permissionprovided
}

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object?> get props => [];
}

class LocationValidateState extends LocationState {
  final double? lat;
  final double? long;
  final LocationStatus? locationStatus;
  final String? address;
  final String? area;
  final String searchText;
  final List<PlaceAutocomplete>? autocompleteList;

  const LocationValidateState({
    this.lat = 0.0,
    this.long = 0.0,
    this.locationStatus = LocationStatus.loading,
    this.address = "Fetching address...",
    this.area = "Fetching area...",
    this.searchText = "",
    this.autocompleteList = const [],
  });

  LocationValidateState copyWith({
    double? lat,
    double? long,
    LocationStatus? locationStatus,
    String? address,
    String? area,
    String? searchText,
    List<PlaceAutocomplete>? autocompleteList,
  }) {
    return LocationValidateState(
        lat: lat ?? this.lat,
        long: long ?? this.long,
        locationStatus: locationStatus ?? this.locationStatus,
        address: address ?? this.address,
        area: area ?? this.area,
        searchText: searchText ?? this.searchText,
        autocompleteList: autocompleteList ?? this.autocompleteList);
  }

  @override
  List<Object?> get props =>
      [lat, long, locationStatus, address, searchText, area, autocompleteList];
}
