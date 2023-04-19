import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class ShowFlushMessage {
  static successFlushBar(BuildContext context,
      {String title = "Success",
      String description = "Success Description goes here"}) {
    return Flushbar(
      title: title,
      message: description,
      backgroundColor: ColorManager.green,
      icon: Icon(
        Icons.check_circle,
        size: 28.0,
        color: ColorManager.white,
      ),
      duration: const Duration(seconds: 3),
      // leftBarIndicatorColor: Colors.blue[300],
    )..show(context);
  }

  static informationFlushBar(BuildContext context,
      {String title = "Info", String description = "Info Description"}) {
    return Flushbar(
      title: title,
      message: description,
      backgroundColor: ColorManager.blue,
      icon: Icon(
        Icons.info,
        size: 28.0,
        color: ColorManager.white,
      ),
      duration: const Duration(seconds: 3),
      // leftBarIndicatorColor: Colors.blue[300],
    )..show(context);
  }

  static errorFlushBar(BuildContext context,
      {String title = "Error!!", String description = "Error description"}) {
    return Flushbar(
      title: title,
      message: description,
      backgroundColor: ColorManager.error,
      icon: Icon(
        Icons.error,
        size: 28.0,
        color: ColorManager.white,
      ),
      duration: const Duration(seconds: 3),
      // leftBarIndicatorColor: Colors.blue[300],
    )..show(context);
  }
}
