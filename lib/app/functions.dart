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
