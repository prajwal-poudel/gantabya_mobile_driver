import 'package:flutter/material.dart';
import 'package:gantabya_app/domain/model/customer_data_model.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/account/account.dart';
import 'package:gantabya_app/presentation/booking/booking.dart';
import 'package:gantabya_app/presentation/driver_pickup/drop_off_customer.dart';
import 'package:gantabya_app/presentation/driver_pickup/goto_pickup.dart';
import 'package:gantabya_app/presentation/home/home_page.dart';
import 'package:gantabya_app/presentation/login/login.dart';
import 'package:gantabya_app/presentation/register/basic_info.dart';
import 'package:gantabya_app/presentation/register/driver_registeration.dart';
import 'package:gantabya_app/presentation/register/id_confirmation.dart';
import 'package:gantabya_app/presentation/register/online_registeration.dart';
import 'package:gantabya_app/presentation/register/vehicle_info.dart';
import 'package:gantabya_app/presentation/ride_confirmation/ride_confirmation_page.dart';
import 'package:gantabya_app/presentation/splash/landing_page.dart';

import '../forgetPassword/forgetPassword.dart';

import '../main/main.dart';

import '../register/driver_license.dart';
import '../register/register.dart';
import '../splash/splash.dart';
import '../storeDetails/storeDetails.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storedetail";
  static const String home = "/home";
  static const String rideConfirmation = "/rideConfirmation";
  static const String customerPickupPage = "/customerPickup";
  static const String customerDropOffPage = "/customerDropOff";
  static const String landing = "/landing";
  static const String driverRegistration = "/driverregistration";
  static const String onlineRegistration = "/onlineregistration";
  static const String basicInfo = "/basicinfo";
  static const String driverLicense = "/driverlicense";
  static const String idConfirmation = "/idconfirmation";
  static const String vehicleInfo = "/vehicleinfo";
  static const String account = "/account";
  static const String booking = "/booking";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.landing:
        return MaterialPageRoute(builder: (_) => const LandingPage());
      // case Routes.onBoardingRoute:
      //   return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        // initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case Routes.driverRegistration:
        return MaterialPageRoute(builder: (_) => const DriverRegisteration());
      case Routes.onlineRegistration:
        return MaterialPageRoute(builder: (_) => const OnlineRegisteration());
      case Routes.basicInfo:
        return MaterialPageRoute(builder: (_) => const BasicInfo());
      case Routes.driverLicense:
        return MaterialPageRoute(builder: (_) => const DriverLicense());
      case Routes.idConfirmation:
        return MaterialPageRoute(builder: (_) => const IdConfirmation());
      case Routes.vehicleInfo:
        return MaterialPageRoute(builder: (_) => const VehicleInfo());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.account:
        return MaterialPageRoute(builder: (_) => const AccountPage());
      case Routes.booking:
        return MaterialPageRoute(builder: (_) => const BookingPage());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.rideConfirmation:
        return MaterialPageRoute(
            builder: (_) => RideConfirmationPage(
                  customerInfo: routeSettings.arguments as CustomerDataModel,
                ));
      case Routes.customerPickupPage:
        return MaterialPageRoute(
            builder: (_) => CustomerPickupPage(
                customerInfo: routeSettings.arguments as CustomerDataModel));
      case Routes.customerDropOffPage:
        return MaterialPageRoute(
            builder: (_) => CustomerDropOffPage(
                customerInfo: routeSettings.arguments as CustomerInfo));
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppString.noRouteFound),
              ),
              body: const Center(
                child: Text(AppString.noRouteFound),
              ),
            ));
  }
}
