import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';

class RideInformation extends StatelessWidget {
  CustomerInfo customerInfo;

  RideInformation({required this.customerInfo, super.key});

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
            backgroundImage: NetworkImage(customerInfo.profileImage),
          ),
          title: Text(
            customerInfo.fullName,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          subtitle: Text("${customerInfo.distanceFromDriver} KM"),
          trailing: Text(
            "RS. ${customerInfo.totalCost}",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Divider(
          color: ColorManager.lightGrey,
        ),
        _customerLocationInfo(context, AppString.pickUp,
            customerInfo.pickUpAddress, customerInfo.distanceFromDriver),
        Divider(
          color: ColorManager.lightGrey,
        ),
        _customerLocationInfo(context, AppString.dropOff,
            customerInfo.dropOffAddress, customerInfo.rideDistance),
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
              Text("${distance} KM")
            ],
          )
        ],
      ),
    );
  }
}
