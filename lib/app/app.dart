import 'package:flutter/material.dart';
import 'package:gantabya_app/app/provider/location_provider/location_provider.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/app/provider/vehicle_provider/vehicle_provider.dart';
import 'package:provider/provider.dart';

import '../presentation/resources/routes_manager.dart';
import '../presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  static final MyApp instance =
      MyApp._internal(); // single instances -->singleton

  factory MyApp() => instance; // Factory for the class instance

  int appState = 0;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => UserProvider()),
        ChangeNotifierProvider(create: (ctx) => VehicleProvider()),
        ChangeNotifierProvider(create: (ctx) => LocationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        // initialRoute: Routes.rideConfirmation,
        theme: getApplicationTheme(),
      ),
    );
  }
}
