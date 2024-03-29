import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gantabya_app/domain/model/customer_data_model.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/utils/calculation_utils.dart';
import 'package:gantabya_app/presentation/widget/map_with_route.dart';

class CustomerPickupPage extends StatefulWidget {
  static const route = "/customerPickup";
  CustomerDataModel customerInfo;
  CustomerPickupPage({required this.customerInfo, super.key});

  @override
  State<CustomerPickupPage> createState() => _CustomerPickupPageState();
}

class _CustomerPickupPageState extends State<CustomerPickupPage> {
  MapController mapController = MapController.withUserPosition(
    // initMapWithUserPosition: true,
    // initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: const BoundingBox.world(),
  );
  // GeoPoint geoPoint = GeoPoint(latitude: widget.customerInfo.source!.latitude!, longitude: 83.4323);

  bool isExpanded = false;
  bool showExpansion = false;
  String? sourceAddress;
  String? destinationAddress;

  @override
  void initState() {
    // getAddressFormCoordinates();
    super.initState();
  }

  // getAddressFormCoordinates() async {
  //   sourceAddress =
  //       await GeographyUtils.getAddressFromCood(widget.customerInfo.source);
  //   destinationAddress = await GeographyUtils.getAddressFromCood(
  //       widget.customerInfo.destination);
  // }

  @override
  void dispose() {
    mapController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
        iconTheme: IconThemeData(color: ColorManager.black),
        title: Text(
          AppString.pickUp,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Stack(
        children: [
          MapWithRoute(
              mapController: mapController,
              destination: GeoPoint(
                  latitude: widget.customerInfo.source!.latitude!,
                  longitude: widget.customerInfo.source!.longitude!)),
          Positioned(
            bottom: 0,
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              height: isExpanded ? AppSize.s250 : AppSize.s60,
              color: Colors.white,
              duration: const Duration(milliseconds: 800),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                      if (showExpansion) {
                        setState(() {
                          showExpansion = !showExpansion;
                        });
                      } else {
                        Future.delayed(Duration(milliseconds: 800), () {
                          setState(() {
                            showExpansion = !showExpansion;
                          });
                        });
                      }
                    },
                    child: SvgPicture.asset(
                      isExpanded ? ImageAssets.arrowDown : ImageAssets.arrowUp,
                      width: AppSize.s28,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PICKUP AT",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: ColorManager.lightGrey),
                          ),
                          if (showExpansion) _expandedWidget()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _expandedWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.customerInfo.sourceAddress ?? "UNKNOWN",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _rideInfo(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: AppSize.s250,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, Routes.customerDropOffPage,
                            arguments: widget.customerInfo);
                      },
                      child: Text(
                        "Start Ride",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: ColorManager.white),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _rideInfo() {
    return Column(
      children: [
        Divider(
          color: ColorManager.lightGrey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Column(
            //   children: [
            //     Text(
            //       "Est. Time",
            //       style: Theme.of(context)
            //           .textTheme
            //           .titleMedium!
            //           .copyWith(color: ColorManager.lightGrey),
            //     ),
            //     const SizedBox(
            //       height: AppSize.s12,
            //     ),
            //     Text("5 Min", style: Theme.of(context).textTheme.titleLarge)
            //   ],
            // ),
            Column(
              children: [
                Text(
                  "Distance",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: ColorManager.lightGrey),
                ),
                const SizedBox(
                  height: AppSize.s12,
                ),
                Text(
                    "${GeographyUtils.distanceBetweenTwoPoints(LatLng(latitude: widget.customerInfo.source!.latitude, longitude: widget.customerInfo.source!.longitude), LatLng(latitude: widget.customerInfo.source!.latitude, longitude: widget.customerInfo.source!.longitude)).toStringAsFixed(2)} KM",
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            Column(
              children: [
                Text(
                  "Fare",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: ColorManager.lightGrey),
                ),
                const SizedBox(
                  height: AppSize.s12,
                ),
                Text(
                    (widget.customerInfo.totalAmount ?? 0.00)
                        .toStringAsFixed(2),
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
          ],
        ),
        Divider(
          color: ColorManager.lightGrey,
        ),
      ],
    );
  }
}
