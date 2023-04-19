import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/app/provider/vehicle_provider/vehicle_provider.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';

import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/widget/lottie_widgets.dart';
import 'package:provider/provider.dart';

import '../../app/functions.dart';
import '../../data/response/vehicle_type_response.dart';
import '../resources/color_manager.dart';

class OnlineRegisteration extends StatefulWidget {
  static const String route = "/onlineregistration";
  const OnlineRegisteration({super.key});

  @override
  State<OnlineRegisteration> createState() => _OnlineRegisterationState();
}

class _OnlineRegisterationState extends State<OnlineRegisteration> {
  @override
  void initState() {
    // getVehicleType();
    super.initState();
  }

  // getVehicleType() {
  //   context.read<VehicleProvider>().getVehicleType();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Card(
            elevation: AppSize.s1_5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: AppSize.s80,
              child: Text(
                "Online Registration",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: AppSize.s18),
              ),
            ),
          ),
          Consumer<UserProvider>(builder: (context, userProvider, _) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p20, vertical: AppPadding.p45),
                child: Column(
                  children: [
                    Column(
                      children: [
                        {
                          "name": "Basic Info",
                          "route": Routes.basicInfo,
                          "isCompleted": userProvider.basicInfoFilled
                        },
                        {
                          "name": "Driver License",
                          "route": Routes.driverLicense,
                          "isCompleted": userProvider.driverLicenseFilled
                        },
                        {
                          "name": "ID Confirmation",
                          "route": Routes.idConfirmation,
                          "isCompleted": userProvider.idConfirmationFilled
                        },
                        {
                          "name": "Vehicle Info",
                          "route": Routes.vehicleInfo,
                          "isCompleted": userProvider.vehicleInfoFilled
                        },
                      ].asMap().entries.map((e) {
                        return InfoTypeList(
                          infoType: e.value,
                          onTap: () {
                            // vehicleProvider.selectVehicle(e.value);
                            Navigator.pushNamed(
                                context, e.value["route"] as String);
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: AppSize.s60,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size(AppSize.s250, AppSize.s40))),
                        onPressed: userProvider.basicInfoFilled &&
                                userProvider.driverLicenseFilled &&
                                userProvider.idConfirmationFilled &&
                                userProvider.vehicleInfoFilled
                            ? () {}
                            : null,
                        child: Text(
                          "Submit",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(color: ColorManager.white),
                        ))
                  ],
                ),
              ),
            );
          })
        ],
      )),
    );
  }
}

class InfoTypeList extends StatelessWidget {
  Map infoType;
  Function onTap;
  InfoTypeList({required this.infoType, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p16),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          height: AppSize.s60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorManager.primaryOpacity70,
              borderRadius: BorderRadius.circular(AppSize.s14)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                infoType["name"],
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Icon(
                infoType["isCompleted"]
                    ? Icons.check_circle_outline
                    : Icons.arrow_forward_ios,
                color: infoType["isCompleted"]
                    ? ColorManager.green
                    : ColorManager.primary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
