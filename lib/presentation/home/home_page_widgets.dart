// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';

class ActiveInactiveMessage extends StatelessWidget {
  bool isActive;
  Function onClose;
  ActiveInactiveMessage(
      {required this.isActive, required this.onClose, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.s70,
      color: isActive ? ColorManager.green : ColorManager.primary,
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon(isActive ? FontAwesomeIcons.eye : FontAwesomeIcons.moon),
          SvgPicture.asset(isActive
              ? ImageAssets.onlineMessageLogo
              : ImageAssets.offlineMessageLogo),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isActive ? AppString.onlineTitle : AppString.offlineTitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
              Text(
                isActive ? AppString.onlineMessage : AppString.offlineMessage,
                style: TextStyle(color: ColorManager.white),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                onClose();
              },
              icon: Icon(
                FontAwesomeIcons.xmark,
                color: ColorManager.white,
                size: AppSize.s18,
              ))
        ],
      ),
    );
  }
}
