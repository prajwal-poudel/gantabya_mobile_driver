import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gantabya_app/domain/model/customer_data_model.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/widget/ride_information.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';

class ConfirmationDialog extends StatelessWidget {
  String confirmationTitle;
  String confirmationMessage;
  Function confirmationFunction;
  ConfirmationDialog(
      {required this.confirmationTitle,
      required this.confirmationMessage,
      required this.confirmationFunction,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: AppSize.s1_5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s14)),
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.only(bottom: AppPadding.p28),
        decoration: BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s14),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: AppSize.s12,
                  offset: Offset(AppSize.s0, AppSize.s12))
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      FontAwesomeIcons.xmark,
                      color: ColorManager.lightGrey,
                      size: AppSize.s18,
                    )),
              ],
            ),
            _getDialogContent(context, confirmationTitle, confirmationMessage,
                confirmationFunction),
          ],
        ),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, String title, String message,
      Function confirmationFunction) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: AppSize.s20),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: AppSize.s16),
          ),
        ),
        SizedBox(
          width: AppSize.s180,
          child: ElevatedButton(
              onPressed: () {
                confirmationFunction();
              },
              child: const Text(
                AppString.confirm,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: AppSize.s16),
              )),
        )
      ],
    );
  }
}

class RideRequestDialog extends StatelessWidget {
  CustomerDataModel customerInfo;
  Function confirmationFunction;
  RideRequestDialog(
      {required this.customerInfo,
      required this.confirmationFunction,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: AppSize.s1_5,
      alignment: Alignment.bottomCenter,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s14)),
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.only(bottom: AppPadding.p28),
        decoration: BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s14),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: AppSize.s12,
                  offset: Offset(AppSize.s0, AppSize.s12))
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      FontAwesomeIcons.xmark,
                      color: ColorManager.lightGrey,
                      size: AppSize.s18,
                    )),
              ],
            ),
            _getDialogContent(context, customerInfo, confirmationFunction),
          ],
        ),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, CustomerDataModel customerInfo,
      Function confirmationFunction) {
    return Column(
      children: [
        RideInformation(customerInfo: customerInfo),
        SizedBox(
          width: AppSize.s180,
          child: ElevatedButton(
              onPressed: () {
                confirmationFunction();
              },
              child: const Text(
                AppString.accept,
                style: TextStyle(fontSize: AppSize.s16),
              )),
        )
      ],
    );
  }
}
