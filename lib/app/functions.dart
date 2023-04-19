// import 'dart:io';

// import 'package:flutter/services.dart';

// import '../domain/model/model.dart';

// Future<DeviceInfo> getDeviceDetails() async {
//   String name = "Unknown";
//   String identifier = "Unknown";
//   String version = "Unknown";

//   DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

//   try {
//     if (Platform.isAndroid) {
//       // return android device info
//       var build = await deviceInfoPlugin.androidInfo;
//       name = build.brand + " " + build.model;
//       identifier = build.id;
//       version = build.version.codename;
//     } else if (Platform.isIOS) {
//       // return ios device info
//       var build = await deviceInfoPlugin.iosInfo;
//       name = "${build.name} ${build.model}";
//       identifier = build.identifierForVendor ?? identifier;
//       version = build.systemVersion ?? version;
//     }
//   } on PlatformException {
//     // return default data here
//     return DeviceInfo(name, identifier, version);
//   }
//   return DeviceInfo(name, identifier, version);
// }

import 'package:flutter/material.dart';
import 'package:gantabya_app/data/response/vehicle_type_response.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:geolocator/geolocator.dart';

import '../data/network/error_handler.dart';
import '../domain/model/exception_model.dart';
import '../presentation/widget/lottie_widgets.dart';

DataSource exceptionTypeAccStatusCodeReturn(int responseCode) {
  switch (responseCode) {
    case 200:
      return DataSource.SUCCESS;
    case 201:
      return DataSource.SUCCESS;
    case 400:
      return DataSource.INVALID_CREDENTIAL;
    case 404:
      return DataSource.NOT_FOUND;
    case 500:
      return DataSource.INTERNAL_SERVER_ERROR;
    case 401:
      return DataSource.UNAUTHORIZED;
    default:
      return DataSource.UNKNOWN_ERROR;
  }
}

Widget responseView(ServerErrorHandler errorType) {
  switch (errorType.dataInfo) {
    case DataSource.SUCCESS:
      return const LottieSuccess();
    case DataSource.INVALID_CREDENTIAL:
      return const LottieInvalidCredentials();
    case DataSource.NOT_FOUND:
      return const LottieNotFound();
    case DataSource.INTERNAL_SERVER_ERROR:
      return const LottieInternalServerError();
    default:
      return const LottieUnknownError();
  }
}

String getIconByVehicleName(String vehicleName) {
  switch (vehicleName.toUpperCase()) {
    case "TAXI":
      return ImageAssets.taxi;
    case "AUTO":
      return ImageAssets.auto;
    default:
      return ImageAssets.eRickshaw;
  }
}

Future<Position> getcurrentLocation() async {
  return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best);
}
