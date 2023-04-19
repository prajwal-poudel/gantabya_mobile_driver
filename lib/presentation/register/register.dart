// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../app/provider/user_provider/user_provider.dart';
import '../../data/network/error_handler.dart';
import '../login/login_widget.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/values_manager.dart';
import '../widget/dialog_box.dart';
import '../widget/flush_bar.dart';

class RegisterPage extends StatefulWidget {
  static const String route = "/register";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> _forKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p40, vertical: AppPadding.p8),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(ImageAssets.loginRegister),
                      const SizedBox(
                        height: AppSize.s80,
                      ),
                      Form(
                          key: _forKey,
                          child: Column(
                            children: [
                              // FormLabel(labelText: "Full Name"),
                              // TextFormField(
                              //   controller: userProvider.fullnameController,
                              //   keyboardType: TextInputType.text,
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .titleLarge!
                              //       .copyWith(color: ColorManager.grey),
                              //   decoration: InputDecoration(
                              //     hintText: "Enter Fullname",
                              //     hintStyle: Theme.of(context)
                              //         .textTheme
                              //         .titleLarge!
                              //         .copyWith(color: ColorManager.grey),
                              //   ),
                              //   validator: (value) {
                              //     if (value!.isEmpty) {
                              //       return "Fullname field is required";
                              //     }
                              //   },
                              // ),
                              // const SizedBox(
                              //   height: AppSize.s20,
                              // ),
                              FormLabel(labelText: "Phone Number"),
                              TextFormField(
                                controller: userProvider.phoneController,
                                keyboardType: TextInputType.phone,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: ColorManager.grey),
                                decoration: InputDecoration(
                                  prefixIcon: ClipRRect(
                                      child: Image.asset(
                                    ImageAssets.flag,
                                    scale: 8,
                                  )),
                                  hintText: "Enter Number",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(color: ColorManager.grey),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Phone Number field is required";
                                  }
                                  // Define a regular expression for phone number validation
                                  RegExp regExp = RegExp(r'^[9][0-9]{9}');

                                  // Check if the phone number matches the regular expression
                                  if (!regExp.hasMatch(value)) {
                                    return "Enter Valid Phone Number";
                                  }
                                },
                              ),
                              // const SizedBox(
                              //   height: AppSize.s20,
                              // ),
                              // FormLabel(labelText: "Password"),
                              // TextFormField(
                              //   controller: userProvider.passwordController,
                              //   keyboardType: TextInputType.visiblePassword,
                              //   obscureText: true,
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .titleLarge!
                              //       .copyWith(color: ColorManager.grey),
                              //   decoration: InputDecoration(
                              //     hintText: "Enter Password",
                              //     hintStyle: Theme.of(context)
                              //         .textTheme
                              //         .titleLarge!
                              //         .copyWith(color: ColorManager.grey),
                              //   ),
                              //   validator: (value) {
                              //     if (value!.isEmpty) {
                              //       return "Password Field is required";
                              //     }
                              //     if (value.length < 8) {
                              //       return "Password should be 8 character long";
                              //     }
                              //   },
                              // ),
                              // const SizedBox(
                              //   height: AppSize.s20,
                              // ),
                              // FormLabel(labelText: "Confirm Password"),
                              // TextFormField(
                              //   controller: userProvider.confirmPasswordController,
                              //   keyboardType: TextInputType.visiblePassword,
                              //   obscureText: true,
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .titleLarge!
                              //       .copyWith(color: ColorManager.grey),
                              //   decoration: InputDecoration(
                              //     hintText: "Enter Password",
                              //     hintStyle: Theme.of(context)
                              //         .textTheme
                              //         .titleLarge!
                              //         .copyWith(color: ColorManager.grey),
                              //   ),
                              //   validator: (value) {
                              //     if (value!.isEmpty) {
                              //       return "Confirm Password is Required";
                              //     }
                              //     if (value != userProvider.passwordController.text) {
                              //       return "Confirm Password should match your password";
                              //     }
                              //   },
                              // ),
                              const SizedBox(
                                height: AppSize.s20,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(
                                          Size(AppSize.s250, AppSize.s45))),
                                  onPressed: () async {
                                    if (_forKey.currentState!.validate()) {
                                      Navigator.popAndPushNamed(
                                          context, Routes.driverRegistration);
                                      // showDialog(
                                      //     barrierDismissible: false,
                                      //     context: context,
                                      //     builder: (_) {
                                      //       return ShowLoadingDialog();
                                      //     });
                                      // var res =
                                      //     await userProvider.registerUser();
                                      // if (res.dataInfo == DataSource.SUCCESS) {
                                      //   Navigator.pop(context);
                                      //   ShowFlushMessage.successFlushBar(
                                      //       context,
                                      //       title: "Register Success",
                                      //       description: res.message ?? "");
                                      //   userProvider.clearAllVariable();
                                      //   // Navigator.pushNamed(
                                      //   //     context, Routes.loginRoute);
                                      // } else {
                                      //   Navigator.pop(context);

                                      //   showDialog(
                                      //       barrierDismissible: false,
                                      //       context: context,
                                      //       builder: (_) =>
                                      //           ResponseHandelingDialog(
                                      //               responseHandler: res,
                                      //               onPressed: () {
                                      //                 Navigator.pop(context);
                                      //               }));
                                      // }
                                    } else {
                                      return;
                                    }
                                  },
                                  child: Text(
                                    "Continue",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(color: ColorManager.white),
                                  ))
                            ],
                          )),
                    ],
                  ),

                  // const SizedBox(
                  //   height: AppSize.s20,
                  // ),
                  // Column(
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //       children: [
                  //         Container(
                  //           width: AppSize.s100,
                  //           decoration: BoxDecoration(
                  //               border: Border(
                  //                   bottom: BorderSide(
                  //                       color: ColorManager.lightGrey))),
                  //         ),
                  //         Text("Or"),
                  //         Container(
                  //           width: AppSize.s100,
                  //           decoration: BoxDecoration(
                  //               border: Border(
                  //                   bottom:
                  //                       BorderSide(color: ColorManager.grey))),
                  //         ),
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: AppSize.s12,
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         const Text("Already have an account ? "),
                  //         TextButton(
                  //           onPressed: () {
                  //             Navigator.of(context)
                  //                 .popAndPushNamed(Routes.loginRoute);
                  //             userProvider.clearAllVariable();
                  //           },
                  //           child: Text(
                  //             "Login",
                  //             style: Theme.of(context).textTheme.displayMedium,
                  //           ),
                  //         )
                  //       ],
                  //     )
                  //   ],
                  // ),

                  // const SizedBox(
                  //   height: AppSize.s20,
                  // ),
                  const Text(
                    "By providing phone number, I hereby agree and accept the Terms of Service and Privacy Policy",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
