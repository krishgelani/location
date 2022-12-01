import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class HomeProvider extends ChangeNotifier
{
  double? lon,lat;
  List pl = [];

  void getPosition() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    lon = position.longitude;
    lat = position.latitude;

    pl =await placemarkFromCoordinates(lat!, lon!);

    notifyListeners();
  }

}