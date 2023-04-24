import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../app/provider/user_provider/user_provider.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';

import '../resources/values_manager.dart';
import '../widget/dialog_box.dart';
import '../widget/flush_bar.dart';
import 'app_bar_registeration.dart';
import 'label_widget_with_required.dart';

class VehicleInfo extends StatefulWidget {
  static const String route = "/vehicleinfo";
  const VehicleInfo({super.key});

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarForRegistration(
            backArrowRequired: true,
            title: "Vehicle Info",
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
                            labelText: "Vehicle Number",
                            isRequired: true,
                          ),
                          TextFormField(
                            controller: userProvider.vehicleNumberController,
                            keyboardType: TextInputType.text,
                            style: Theme.of(context).textTheme.titleLarge,
                            decoration: const InputDecoration(
                                hintText: "Enter Vehicle number"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Vehicle number is required";
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
                              labelText: "Add Bill Book Photo",
                              isRequired: true),
                          Card(
                            elevation: AppSize.s1_5,
                            child: Container(
                                width: double.infinity,
                                height: AppSize.s180,
                                child: userProvider.billbookImage != null
                                    ? ClipRRect(
                                        child: Image.file(
                                            userProvider.billbookImage!))
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
                                                                        .gallery);
                                                        // setState(() {
                                                        //   selectedBillBook =
                                                        //       File(img!.path);
                                                        // });
                                                        userProvider
                                                                .setBillbookImage =
                                                            File(img!.path);
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
                                                        // setState(() {
                                                        //   selectedBillBook =
                                                        //       File(img!.path);
                                                        // });
                                                        userProvider
                                                                .setBillbookImage =
                                                            File(img!.path);
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
                      Column(
                        children: [
                          LabelWithRequired(
                              labelText: "Add Vehicle Photo", isRequired: true),
                          Card(
                            elevation: AppSize.s1_5,
                            child: Container(
                                width: double.infinity,
                                height: AppSize.s180,
                                child: userProvider.vehicleImage != null
                                    ? ClipRRect(
                                        child: Image.file(
                                            userProvider.vehicleImage!))
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
                                                        // setState(() {
                                                        //   selectedVehicleImage =
                                                        //       File(img!.path);
                                                        // });
                                                        userProvider
                                                                .setVehicleImage =
                                                            File(img!.path);
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
                                                        // setState(() {
                                                        //   selectedVehicleImage =
                                                        //       File(img!.path);
                                                        // });
                                                        userProvider
                                                                .setVehicleImage =
                                                            File(img!.path);
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
                              if (userProvider.vehicleImage == null ||
                                  userProvider.billbookImage == null) {
                                ShowFlushMessage.errorFlushBar(context,
                                    title: "Image",
                                    description:
                                        "Bill Book and Vehicle image is required");
                              } else {
                                // Map<String, dynamic> map = {
                                //   "vehicle_number":
                                //       vehicleNumberController.text,
                                //   "billbook_image": selectedBillBook,
                                //   "vehicle_image": selectedVehicleImage
                                // };
                                userProvider.registerVehicleInfo();
                                Navigator.pop(context);
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
