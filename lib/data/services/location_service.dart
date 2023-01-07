import 'dart:convert';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:nammaooru_nearu/data/models/place_autocomplete.dart';

class LocationService {
  String os = Platform.operatingSystem;
  Future<Position?> getCurrentLocationService() async {
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) => value);
  }

  Future<String> getAddressFromLatLng(double latitude, double longitude) async {
    String address = await placemarkFromCoordinates(latitude, longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      if (kDebugMode) {
        print(place);
      }
      if (place.street!.isEmpty) {
        return "${place.subLocality}, ${place.subAdministrativeArea}";
      } else {
        return "${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}";
      }
    });
    if (kDebugMode) {
      print(address);
    }
    return address;
  }

  Future<String> getAreafromLatLng(double latitude, double longitude) async {
    String address = await placemarkFromCoordinates(latitude, longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      // print(place);
      return "${place.subLocality}";
    });
    return address;
  }

  Future<String> getPlaceId(String input) async {
    String key = "";
    if (os == "ios") {
      key == "AIzaSyDaJ3zH3szivlrAO6cIMTp4x5LjwENe-qU";
    } else {
      key == "AIzaSyDQ_vZmlfJHBpzDEuju8S1uh4GbaxkUg8w";
    }
    final String url =
        "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=AIzaSyDaJ3zH3szivlrAO6cIMTp4x5LjwENe-qU";
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    if (kDebugMode) {
      print(response.body);
    }
    var placeId = json['candidates'][0]['place_id'] as String;
    if (kDebugMode) {
      print(placeId);
    }
    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    // final placeId = await getPlaceId(input);
    String key = "";
    if (os == "ios") {
      key == "AIzaSyDaJ3zH3szivlrAO6cIMTp4x5LjwENe-qU";
    } else {
      key == "AIzaSyDQ_vZmlfJHBpzDEuju8S1uh4GbaxkUg8w";
    }
    final String url =
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$input&key=AIzaSyDaJ3zH3szivlrAO6cIMTp4x5LjwENe-qU";
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    if (kDebugMode) {
      print(response.body);
    }
    var results = json['result'] as Map<String, dynamic>;
    if (kDebugMode) {
      print(results);
    }
    return results;
  }

  Future<List<PlaceAutocomplete>> getPlaceAutocompleteList(
      String search) async {
    var results = [];
    String key = "";
    if (os == "ios") {
      key == "AIzaSyDaJ3zH3szivlrAO6cIMTp4x5LjwENe-qU";
    } else {
      key == "AIzaSyDQ_vZmlfJHBpzDEuju8S1uh4GbaxkUg8w";
    }
    String type = "address";
    try {
      String url =
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=$type&key=AIzaSyDaJ3zH3szivlrAO6cIMTp4x5LjwENe-qU";
      var response = await http.get(Uri.parse(url));
      var json = jsonDecode(response.body);
      results = json['predictions'] as List;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return results.map((place) => PlaceAutocomplete.fromJson(place)).toList();
  }
}
