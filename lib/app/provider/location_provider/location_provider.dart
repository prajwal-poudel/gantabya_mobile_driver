import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../functions.dart';

class LocationProvider extends ChangeNotifier {
  Position? _currentLocation;

  Position get currentLocation {
    return _currentLocation!;
  }

  Future<Position> fetchCurrentLocation() async {
    _currentLocation = await getcurrentLocation();
    notifyListeners();
    return _currentLocation!;
  }
}
