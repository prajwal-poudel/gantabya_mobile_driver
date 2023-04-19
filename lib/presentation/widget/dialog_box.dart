import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gantabya_app/domain/model/customer_data_model.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/widget/lottie_widgets.dart';
import 'package:gantabya_app/presentation/widget/ride_information.dart';

import '../../app/functions.dart';
import '../../domain/model/exception_model.dart';
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

class ResponseHandelingDialog extends StatelessWidget {
  ServerErrorHandler responseHandler;
  Function onPressed;
  ResponseHandelingDialog(
      {required this.responseHandler, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: AppSize.s1_5,
      alignment: Alignment.center,
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
            _getDialogContent(context, responseHandler, onPressed),
          ],
        ),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, ServerErrorHandler response,
      Function confirmationFunction) {
    return Column(
      children: [
        // RideInformation(customerInfo: customerInfo),
        responseView(response),
        const SizedBox(
          height: AppSize.s20,
        ),
        Text(
          response.message ?? "",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: AppSize.s20,
        ),

        SizedBox(
          width: AppSize.s180,
          child: ElevatedButton(
              onPressed: () {
                confirmationFunction();
              },
              child: const Text(
                "Okay",
                style: TextStyle(fontSize: AppSize.s16),
              )),
        )
      ],
    );
  }
}

class ShowLoadingDialog extends StatelessWidget {
  ShowLoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: AppSize.s1_5,
      alignment: Alignment.center,
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
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const LottieLoading(),
                Text(
                  "Loading...",
                  style: Theme.of(context).textTheme.displayLarge,
                )
              ],
            ),
            // _getDialogContent(context, responseHandler, onPressed),
          ],
        ),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, ServerErrorHandler response,
      Function confirmationFunction) {
    return Column(
      children: [
        // RideInformation(customerInfo: customerInfo),
        responseView(response),
        const SizedBox(
          height: AppSize.s20,
        ),
        Text(
          response.message ?? "",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: AppSize.s20,
        ),

        SizedBox(
          width: AppSize.s180,
          child: ElevatedButton(
              onPressed: () {
                confirmationFunction();
              },
              child: const Text(
                "Okay",
                style: TextStyle(fontSize: AppSize.s16),
              )),
        )
      ],
    );
  }
}

class FileChooseOptionDialog extends StatelessWidget {
  Function onCamera;
  Function onGallery;
  FileChooseOptionDialog(
      {required this.onCamera, required this.onGallery, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: AppSize.s1_5,
      alignment: Alignment.center,
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
            _getDialogContent(context, onCamera, onGallery),
          ],
        ),
      ),
    );
  }

  Widget _getDialogContent(
      BuildContext context, Function onCamera, Function onGallery) {
    return Column(
      children: [
        // RideInformation(customerInfo: customerInfo),
        Stack(
          children: [
            SvgPicture.asset(ImageAssets.imageChoose),
            Positioned(child: SvgPicture.asset(ImageAssets.imagesList))
          ],
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        Text(
          "Add Photo",
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: AppSize.s20),
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        Text(
          "Please make sure that your photo is clear.",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        SizedBox(
          width: AppSize.s200,
          child: ElevatedButton(
              onPressed: () {
                onGallery();
              },
              child: Text(
                "Choose From Gallery",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: ColorManager.white),
              )),
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        TextButton(
            onPressed: () {
              onCamera();
            },
            child: Text(
              "Take a Photo",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: ColorManager.primary,
                  decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}
