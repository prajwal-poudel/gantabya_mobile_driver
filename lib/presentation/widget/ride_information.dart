import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gantabya_app/app/functions.dart';
import 'package:gantabya_app/app/provider/location_provider/location_provider.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';

import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/utils/calculation_utils.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

import '../../domain/model/customer_data_model.dart';

class RideInformation extends StatefulWidget {
  CustomerDataModel customerInfo;

  RideInformation({required this.customerInfo, super.key});

  @override
  State<RideInformation> createState() => _RideInformationState();
}

class _RideInformationState extends State<RideInformation> {
  String? sourceAddress;
  String? destinationAddress;
  // Position? location;

  @override
  void initState() {
    // getCalculationInfo();
    super.initState();
  }

  // getCalculationInfo() async {
  //   Position pos = await getcurrentLocation();
  //   setState(() {
  //     location = pos;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    log(widget.customerInfo.fullName.toString());
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: AppSize.s28,
            backgroundImage: NetworkImage(widget.customerInfo.profilePicture ??
                "https://s3-alpha-sig.figma.com/img/1327/9a67/f2a75b6afccbe62f44368af15331178c?Expires=1682294400&Signature=ll9ofVsFwJxhfy9pMpD0oQNRfwMIr8bCiVxZLp~0DDt5naR3py~syckQIa8kjp2M5iJJ-uv~ZR0ijwqgLuhVX01NC1iZ0WYeI8FGt3Oz4r1OjSU3mJvrOydKFGyiJYUiuhMDzAXk4Ehuh~-wF4BQ60uxg9yJPGRXptiwN48aE1aNhf-nD0FZvGcaISicDXbwocf7l1rxB-IUW8q9cJ4t0sHVBASsqcmVdBwa5dA3XtpF32KDZpAPYFxKLvkY~6fJekyTJ8HGbwWtY7QMneA8frpbWBZETSOqSH0JqV36vrPWoSSkYfecOaW7ZQ63COWlbTC81zqzzfUjwsJUtUTB4A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
          ),
          title: Text(
            widget.customerInfo.fullName ?? "",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          subtitle: Consumer<LocationProvider>(
              builder: (context, locationProvider, _) {
            return Text(
                "${(GeographyUtils.distanceBetweenTwoPoints(widget.customerInfo.source!, LatLng(latitude: locationProvider.currentLocation.latitude, longitude: locationProvider.currentLocation.longitude))).toStringAsFixed(2)} KM");
          }),
          trailing: Text(
            "RS. ${widget.customerInfo.totalAmount}",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Divider(
          color: ColorManager.lightGrey,
        ),
        Consumer<LocationProvider>(builder: (context, locationProvider, _) {
          return _customerLocationInfo(
              context,
              AppString.pickUp,
              widget.customerInfo.sourceAddress ?? "UNKNOWN",
              GeographyUtils.distanceBetweenTwoPoints(
                  widget.customerInfo.source!,
                  LatLng(
                      latitude: locationProvider.currentLocation.latitude,
                      longitude: locationProvider.currentLocation.longitude)));
        }),
        Divider(
          color: ColorManager.lightGrey,
        ),
        _customerLocationInfo(
            context,
            AppString.dropOff,
            widget.customerInfo.destinationAddress ?? "UNKNOWN",
            GeographyUtils.distanceBetweenTwoPoints(
                widget.customerInfo.source!, widget.customerInfo.destination!)),
        Divider(
          color: ColorManager.lightGrey,
        ),
      ],
    );
  }

  Widget _customerLocationInfo(
    BuildContext context,
    String title,
    String address,
    double distance,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                address,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text("${distance.toStringAsFixed(2)} KM")
            ],
          )
        ],
      ),
    );
  }
}
