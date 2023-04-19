import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gantabya_app/app/provider/vehicle_provider/vehicle_provider.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';

import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/widget/lottie_widgets.dart';
import 'package:provider/provider.dart';

import '../../app/functions.dart';
import '../../data/response/vehicle_type_response.dart';
import '../resources/color_manager.dart';

class DriverRegisteration extends StatefulWidget {
  static const String route = "/driverregistration";
  const DriverRegisteration({super.key});

  @override
  State<DriverRegisteration> createState() => _DriverRegisterationState();
}

class _DriverRegisterationState extends State<DriverRegisteration> {
  @override
  void initState() {
    getVehicleType();
    super.initState();
  }

  getVehicleType() {
    context.read<VehicleProvider>().getVehicleType();
  }

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
                "Driver Registration",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: AppSize.s18),
              ),
            ),
          ),
          Consumer<VehicleProvider>(
            builder: (context, vehicleProvider, _) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p20, vertical: AppPadding.p45),
                child: vehicleProvider.vehicleTypes.isEmpty
                    ? const LottieLoading()
                    : Column(
                        children: vehicleProvider.vehicleTypes
                            .asMap()
                            .entries
                            .map((e) {
                          return VehicleTypeList(
                            vehicleType: e.value,
                            onTap: () {
                              vehicleProvider.selectVehicle(e.value);
                              Navigator.popAndPushNamed(
                                  context, Routes.onlineRegistration);
                            },
                          );
                        }).toList(),
                      ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class VehicleTypeList extends StatelessWidget {
  VehicleTypeModel vehicleType;
  Function onTap;
  VehicleTypeList({required this.vehicleType, required this.onTap, super.key});

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
          height: AppSize.s100,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorManager.primaryOpacity70,
              borderRadius: BorderRadius.circular(AppSize.s14)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                  getIconByVehicleName(vehicleType.vehicleName ?? "NONE")),
              Text(
                vehicleType.vehicleName ?? "NONE",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorManager.primary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
