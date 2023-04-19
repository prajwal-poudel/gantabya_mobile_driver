import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../resources/assets_manager.dart';
import '../resources/values_manager.dart';

class LottieLoading extends StatelessWidget {
  const LottieLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.loading,
        height: AppSize.s150, width: AppSize.s150);
  }
}

class LottieSuccess extends StatelessWidget {
  const LottieSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.success,
        height: AppSize.s150, width: AppSize.s150);
  }
}

class LottieInvalidCredentials extends StatelessWidget {
  const LottieInvalidCredentials({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.alert,
        height: AppSize.s150, width: AppSize.s150);
  }
}

class LottieNotFound extends StatelessWidget {
  const LottieNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.notFound,
        height: AppSize.s150, width: AppSize.s150);
  }
}

class LottieInternalServerError extends StatelessWidget {
  const LottieInternalServerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.serverError,
        height: AppSize.s150, width: AppSize.s150);
  }
}

class LottieUnknownError extends StatelessWidget {
  const LottieUnknownError({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(ImageAssets.alert,
        height: AppSize.s150, width: AppSize.s150);
  }
}
