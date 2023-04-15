import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gantabya_app/domain/model/customer_data_model.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/driver_pickup/goto_pickup.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/widget/ride_information.dart';

import '../resources/values_manager.dart';
import '../widget/dialog_box.dart';

class RideConfirmationPage extends StatefulWidget {
  static const route = "/rideConfirmation";

  CustomerDataModel customerInfo;
  RideConfirmationPage({required this.customerInfo, super.key});

  @override
  State<RideConfirmationPage> createState() => _RideConfirmationPageState();
}

class _RideConfirmationPageState extends State<RideConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return _mainRideConfirmationUi();
  }

  Widget _mainRideConfirmationUi() {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: ColorManager.white,
            elevation: AppSize.s1_5,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: ColorManager.white,
                statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark)),
        body: Column(
          children: [
            RideInformation(customerInfo: widget.customerInfo),
            const SizedBox(
              height: AppSize.s18,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.green),
                    onPressed: () {},
                    icon: const Icon(Icons.phone),
                    label: const Text(AppString.call))),
            const SizedBox(
              height: AppSize.s4,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.customerPickupPage,
                          arguments: widget.customerInfo);
                    },
                    child: const Text(AppString.gotoPickUp))),
          ],
        ));
  }
}
