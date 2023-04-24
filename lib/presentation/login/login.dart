// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:gantabya_app/presentation/login/login_widget.dart';
import 'package:gantabya_app/presentation/utils/ui_management.dart';

import 'package:provider/provider.dart';

import '../../app/provider/user_provider/user_provider.dart';
import '../../data/network/error_handler.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/values_manager.dart';
import '../widget/dialog_box.dart';
import '../widget/flush_bar.dart';

class LoginPage extends StatefulWidget {
  static const String route = "/login";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _forKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    userProvider.clearAllVariable();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p40, vertical: AppPadding.p8),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageAssets.loginRegister),
                const SizedBox(
                  height: AppSize.s40,
                ),
                Form(
                    key: _forKey,
                    child: Column(
                      children: [
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
                              return "Phone Number is Required";
                            }
                          },
                        ),
                        const SizedBox(
                          height: AppSize.s20,
                        ),
                        FormLabel(labelText: "Password"),
                        TextFormField(
                          controller: userProvider.passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: ColorManager.grey),
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: ColorManager.grey),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password is Required";
                            }
                          },
                        ),
                        const SizedBox(
                          height: AppSize.s40,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    const Size(AppSize.s250, AppSize.s45))),
                            onPressed: () async {
                              if (_forKey.currentState!.validate()) {
                                DialogLoader.displayDialogLoader(context);
                                var res = await userProvider.loginUser();
                                if (res.dataInfo == DataSource.SUCCESS) {
                                  DialogLoader.destroyDialogLoader(context);
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      Routes.landing, (route) => false);
                                  ShowFlushMessage.successFlushBar(context,
                                      title: "Login Success",
                                      description: res.message ?? "");
                                  userProvider.clearAllVariable();
                                } else {
                                  Navigator.pop(context);

                                  DialogResponse.displayDialogResponse(
                                      context, res);
                                }
                              } else {
                                return;
                              }
                            },
                            child: Text(
                              "Login",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(color: ColorManager.white),
                            ))
                      ],
                    )),
                const SizedBox(
                  height: AppSize.s40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: AppSize.s100,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorManager.lightGrey))),
                        ),
                        Text("Or"),
                        Container(
                          width: AppSize.s100,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: ColorManager.grey))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ? "),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Routes.registerRoute);
                            userProvider.clearAllVariable();
                          },
                          child: Text(
                            "Register",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: AppSize.s40,
                ),
                const Text(
                  "By providing phone number, I hereby agree and\n accept the Terms of Service and Privacy Policy",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
