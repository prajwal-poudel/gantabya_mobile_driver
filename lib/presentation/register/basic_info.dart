import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';
import 'package:gantabya_app/presentation/widget/flush_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../resources/values_manager.dart';
import '../widget/dialog_box.dart';
import 'app_bar_registeration.dart';
import 'label_widget_with_required.dart';

class BasicInfo extends StatefulWidget {
  static const String route = "/basicinfo";
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarForRegistration(backArrowRequired: true, title: "Basic Info"),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p28, vertical: AppPadding.p20),
              child: Consumer<UserProvider>(
                builder: (context, userProvider, child) => Form(
                  key: _formKey,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - AppSize.s40,
                    child: Column(
                      children: [
                        Container(
                          // height: AppSize.s200,
                          width: double.infinity,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Container(
                                height: AppSize.s114,
                                width: AppSize.s114,
                                decoration: BoxDecoration(
                                    color: ColorManager.lightGrey,
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s57)),
                                child: userProvider.profilePicture != null
                                    ? ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(AppSize.s57),
                                        child: Image.file(
                                          userProvider.profilePicture!,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : Icon(
                                        Icons.camera_alt,
                                        color: ColorManager.white,
                                        size: AppSize.s40,
                                      ),
                              ),
                              Positioned(
                                bottom: AppSize.s0,
                                right: AppSize.s0,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (_) => FileChooseOptionDialog(
                                              onCamera: () async {
                                                try {
                                                  XFile? selectedImage =
                                                      await picker.pickImage(
                                                          source: ImageSource
                                                              .camera);
                                                  // setState(() {
                                                  //   imageToShow = File(
                                                  //       selectedImage!.path);
                                                  // });

                                                  userProvider
                                                          .setProfilePicture =
                                                      File(selectedImage!.path);

                                                  Navigator.pop(context);
                                                } catch (err) {}
                                              },
                                              onGallery: () async {
                                                try {
                                                  XFile? selectedImage =
                                                      await picker.pickImage(
                                                          source: ImageSource
                                                              .gallery);
                                                  // setState(() {
                                                  //   imageToShow = File(
                                                  //       selectedImage!.path);
                                                  // });
                                                  userProvider
                                                          .setProfilePicture =
                                                      File(selectedImage!.path);
                                                  Navigator.pop(context);
                                                } catch (err) {}
                                              },
                                            ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: AppSize.s33,
                                    width: AppSize.s33,
                                    decoration: BoxDecoration(
                                        color: ColorManager.primary,
                                        borderRadius: BorderRadius.circular(
                                            AppSize.s16_5)),
                                    child: Icon(
                                      Icons.add,
                                      color: ColorManager.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  LabelWithRequired(
                                    labelText: "FullName",
                                    isRequired: true,
                                  ),
                                  TextFormField(
                                    controller: userProvider.fullnameController,
                                    keyboardType: TextInputType.text,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                    decoration: const InputDecoration(
                                        hintText: "Enter fullname"),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Fullname is required";
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  LabelWithRequired(
                                    labelText: "Gender",
                                    isRequired: true,
                                  ),
                                  DropdownButtonFormField(
                                    value: userProvider.selectedGender,
                                    items: ["Male", "Female", "Others"]
                                        .asMap()
                                        .entries
                                        .map((e) => DropdownMenuItem(
                                              value: e.value,
                                              child: Text(
                                                e.value,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge,
                                              ),
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      userProvider.setGender = value!;
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Gender Field is Required";
                                      }
                                    },
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  LabelWithRequired(
                                    labelText: "Date of birth",
                                    isRequired: true,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      var date = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1950),
                                          lastDate: DateTime.now());
                                      setState(() {
                                        userProvider.setDob =
                                            DateFormat('yyyy-mm-dd')
                                                .format(date!);
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p12),
                                      height: AppSize.s45,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorManager.lightGrey,
                                              width: AppSize.s1_5)),
                                      child: Text(
                                        userProvider.dob == null
                                            ? ""
                                            : userProvider.dob!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  LabelWithRequired(
                                    labelText: "Email",
                                    isRequired: true,
                                  ),
                                  TextFormField(
                                    controller: userProvider.emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Email"),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Email is required";
                                      }
                                      final bool emailValid = RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value);
                                      if (!emailValid) {
                                        return "Enter valid Email";
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  LabelWithRequired(
                                    labelText: "Password",
                                    isRequired: true,
                                  ),
                                  TextFormField(
                                    controller: userProvider.passwordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: true,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Password"),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Password is required";
                                      }

                                      if (value.length < 8) {
                                        return "Password must be atleast 8 character long";
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  LabelWithRequired(
                                    labelText: "Confirm Password",
                                    isRequired: true,
                                  ),
                                  TextFormField(
                                    controller:
                                        userProvider.confirmPasswordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: true,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Confirm Password"),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Confirm Password is required";
                                      }

                                      if (value !=
                                          userProvider
                                              .passwordController.text) {
                                        return "Confirm Password should match passwod";
                                      }
                                    },
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(
                                          const Size(
                                              AppSize.s250, AppSize.s40))),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      if (userProvider.dob != null &&
                                          userProvider.dob!.isNotEmpty) {
                                        userProvider.registerBasicInfo();
                                        Navigator.popAndPushNamed(
                                            context, Routes.driverLicense);
                                      } else {
                                        ShowFlushMessage.errorFlushBar(context,
                                            title: "Date of Birth",
                                            description:
                                                "Date of birth is required");
                                      }
                                    } else {
                                      return;
                                    }
                                  },
                                  child: Text(
                                    "Next",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(color: ColorManager.white),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ))
        ],
      )),
    );
  }
}
