part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentLocationEvent extends LocationEvent {
  const GetCurrentLocationEvent();
  @override
  List<Object> get props => [];
}

class UpdateMarketLocationEvent extends LocationEvent {
  const UpdateMarketLocationEvent(this.lat, this.lng);
  final double lat;
  final double lng;
  @override
  List<Object> get props => [lat, lng];
}

class PermissionRequestEvent extends LocationEvent {
  const PermissionRequestEvent();
  @override
  List<Object> get props => [];
}

class SearchLocationEvent extends LocationEvent {
  final String text;
  const SearchLocationEvent(this.text);
  @override
  List<Object> get props => [text];
}

class SearchTextChangeEvent extends LocationEvent {
  final String searchText;
  const SearchTextChangeEvent(this.searchText);
  @override
  List<Object> get props => [searchText];
}
