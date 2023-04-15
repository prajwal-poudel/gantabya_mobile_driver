import 'package:flutter/material.dart';

import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/utils/calculation_utils.dart';

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

  @override
  void initState() {
    // getCalculationInfo();
    super.initState();
  }

  // getCalculationInfo() async {
  //   sourceAddress =
  //       await GeographyUtils.getAddressFromCood(widget.customerInfo.source);
  //   destinationAddress = await GeographyUtils.getAddressFromCood(
  //       widget.customerInfo.destination);
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: AppSize.s28,
            backgroundImage: NetworkImage(widget.customerInfo.profilePicture),
          ),
          title: Text(
            widget.customerInfo.fullName,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          subtitle: Text(
              "${(GeographyUtils.distanceBetweenTwoPoints(widget.customerInfo.source, LatLng(latitude: 83.454, longitude: 27.334))).toStringAsFixed(2)} KM"),
          trailing: Text(
            "RS. ${widget.customerInfo.totalAmount}",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Divider(
          color: ColorManager.lightGrey,
        ),
        _customerLocationInfo(
            context,
            AppString.pickUp,
            widget.customerInfo.sourceAddress,
            GeographyUtils.distanceBetweenTwoPoints(widget.customerInfo.source,
                LatLng(latitude: 83.454, longitude: 27.334))),
        Divider(
          color: ColorManager.lightGrey,
        ),
        _customerLocationInfo(
            context,
            AppString.dropOff,
            widget.customerInfo.destinationAddress,
            GeographyUtils.distanceBetweenTwoPoints(
                widget.customerInfo.source, widget.customerInfo.destination)),
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
