import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/presentation/register/app_bar_registeration.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/widget/flush_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../widget/dialog_box.dart';
import 'label_widget_with_required.dart';

class DriverLicense extends StatefulWidget {
  static const String route = "/driverlicense";
  const DriverLicense({super.key});

  @override
  State<DriverLicense> createState() => _DriverLicenseState();
}

class _DriverLicenseState extends State<DriverLicense> {
  TextEditingController licenseNumberController = TextEditingController();
  File? selectedImage;
  ImagePicker picker = ImagePicker();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarForRegistration(
            backArrowRequired: true,
            title: "Driver License",
          ),
          Consumer<UserProvider>(
            builder: (context, userProvider, child) => Form(
              key: _formKey,
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p28, vertical: AppPadding.p20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          LabelWithRequired(
                            labelText: "Driving License Number",
                            isRequired: true,
                          ),
                          TextFormField(
                            controller: licenseNumberController,
                            keyboardType: TextInputType.text,
                            style: Theme.of(context).textTheme.titleLarge,
                            decoration: const InputDecoration(
                                hintText: "Enter License number"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "License number is required";
                              }
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s60,
                      ),
                      Column(
                        children: [
                          LabelWithRequired(
                              labelText: "Add License Photo", isRequired: true),
                          Card(
                            elevation: AppSize.s1_5,
                            child: Container(
                                width: double.infinity,
                                height: AppSize.s180,
                                child: selectedImage != null
                                    ? ClipRRect(
                                        child: Image.file(selectedImage!))
                                    : InkWell(
                                        onTap: () {
                                          showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (_) =>
                                                  FileChooseOptionDialog(
                                                    onCamera: () async {
                                                      try {
                                                        XFile? img = await picker
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
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
                                                        XFile? img = await picker
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                ImageAssets.imageUpload),
                                            const SizedBox(
                                              height: AppSize.s16,
                                            ),
                                            Text(
                                              "Browse to upload image",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                      color:
                                                          ColorManager.primary),
                                            )
                                          ],
                                        ),
                                      )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  Size(AppSize.s200, AppSize.s40))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (selectedImage != null) {
                                Map<String, dynamic> map = {
                                  "license_number":
                                      licenseNumberController.text,
                                  "license_image": selectedImage
                                };
                                userProvider.registerDriverLicense(map);
                                Navigator.popAndPushNamed(
                                    context, Routes.idConfirmation);
                              } else {
                                ShowFlushMessage.errorFlushBar(context,
                                    title: "License Image",
                                    description: "License image is required");
                              }
                            } else {
                              return;
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
              )),
            ),
          )
        ],
      )),
    );
  }
}
