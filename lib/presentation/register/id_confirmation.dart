import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/presentation/register/app_bar_registeration.dart';
import 'package:gantabya_app/presentation/register/label_widget_with_required.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../resources/routes_manager.dart';
import '../widget/dialog_box.dart';
import '../widget/flush_bar.dart';

class IdConfirmation extends StatefulWidget {
  static const String route = "/idconfirmation";
  const IdConfirmation({super.key});

  @override
  State<IdConfirmation> createState() => _IdConfirmationState();
}

class _IdConfirmationState extends State<IdConfirmation> {
  File? selectedImage;
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarForRegistration(
              backArrowRequired: true, title: "Id Confirmation"),
          Consumer<UserProvider>(builder: (context, userProvider, _) {
            return Expanded(
                child: Container(
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p28, vertical: AppPadding.p20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        LabelWithRequired(
                            labelText: "Add Photo with License",
                            isRequired: true),
                        Card(
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                horizontal: AppPadding.p12,
                                vertical: AppPadding.p12),
                            child: Column(
                              children: [
                                Container(
                                  height: AppSize.s180,
                                  width: AppSize.s180,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s12)),
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s12),
                                      child: selectedImage != null
                                          ? Image.file(
                                              selectedImage!,
                                              fit: BoxFit.cover,
                                            )
                                          : Image.asset(
                                              ImageAssets.idConfirmation,
                                              fit: BoxFit.cover,
                                            )),
                                ),
                                const SizedBox(
                                  height: AppSize.s12,
                                ),
                                OutlinedButton(
                                    onPressed: () {
                                      showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (_) =>
                                              FileChooseOptionDialog(
                                                onCamera: () async {
                                                  try {
                                                    XFile? img =
                                                        await picker.pickImage(
                                                            source: ImageSource
                                                                .camera);
                                                    setState(() {
                                                      selectedImage =
                                                          File(img!.path);
                                                    });
                                                    Navigator.pop(context);
                                                  } catch (err) {}
                                                },
                                                onGallery: () async {
                                                  try {
                                                    XFile? img =
                                                        await picker.pickImage(
                                                            source: ImageSource
                                                                .gallery);
                                                    setState(() {
                                                      selectedImage =
                                                          File(img!.path);
                                                    });
                                                    Navigator.pop(context);
                                                  } catch (err) {}
                                                },
                                              ));
                                    },
                                    child: Text(
                                      "Upload Image",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              color: ColorManager.primary),
                                    )),
                                const SizedBox(
                                  height: AppSize.s20,
                                ),
                                Text(
                                  """
Note: Place your driver’s license in front of you and take a photo as an example.

The photo should should clearly show the face and your driver’s license.

Make sure that the photo is taken in good lighting and is of high quality.

Photos taken in sunglasses are not allowed.""",
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                Size(AppSize.s200, AppSize.s40))),
                        onPressed: () {
                          if (selectedImage != null) {
                            Map<String, dynamic> map = {
                              "confirmation_image": selectedImage
                            };
                            userProvider.registerIdConfirmation(map);
                            Navigator.popAndPushNamed(
                                context, Routes.vehicleInfo);
                          } else {
                            ShowFlushMessage.errorFlushBar(context,
                                title: "Confirmation Image",
                                description:
                                    "Id confirmation image is required");
                          }
                        },
                        child: Text(
                          "Next",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: ColorManager.white),
                        ))
                  ],
                ),
              ),
            ));
          }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "For any additional queries, please contact our",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: ColorManager.black),
              ),
              Text(
                "Customer Support",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: ColorManager.primary,
                    decoration: TextDecoration.underline),
              ),
            ],
          )
        ],
      )),
    );
  }
}
