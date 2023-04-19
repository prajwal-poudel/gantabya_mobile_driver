import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app/provider/user_provider/user_provider.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(Duration(seconds: 4), _goNext);
  }

  _goNext() async {
    if (await Provider.of<UserProvider>(context, listen: false)
        .checkAuthentication()) {
      Navigator.pushReplacementNamed(context, Routes.landing);
    } else {
      Navigator.pushReplacementNamed(context, Routes.loginRoute);
    }
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary.withOpacity(0.9),
      body: const Center(
          child: Image(
        image: AssetImage(ImageAssets.splashLogo),
      )),
    );
  }
}
