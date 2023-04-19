import 'package:gantabya_app/domain/model/customer_data_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeographyUtils {
  static Future<String> getAddressFromCood(LatLng coordinate) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          coordinate.latitude!, coordinate.longitude!);
      Placemark placemark = placemarks[0];
      String address =
          '${placemark.street}, ${placemark.locality}, ${placemark.administrativeArea} ';
      return address;
    } catch (err) {
      return "${coordinate.latitude},${coordinate.longitude}";
    }
  }

  static double distanceBetweenTwoPoints(LatLng cood1, LatLng cood2) {
    final distance = Geolocator.distanceBetween(
      cood1.latitude!,
      cood1.longitude!,
      cood2.latitude!,
      cood2.longitude!,
    );
    return (distance / 1000);
  }
}
