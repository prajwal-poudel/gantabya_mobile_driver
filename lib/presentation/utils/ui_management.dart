import 'package:flutter/material.dart';
import 'package:gantabya_app/domain/model/exception_model.dart';

import '../widget/dialog_box.dart';

class DialogLoader {
  static displayDialogLoader(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => ShowLoadingDialog());
  }

  static destroyDialogLoader(BuildContext context) {
    Navigator.pop(context);
  }
}

class DialogResponse {
  static displayDialogResponse(
      BuildContext context, ServerErrorHandler response,
      {Function? onClick}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => ResponseHandelingDialog(
              responseHandler: response,
              onPressed: () {
                Navigator.pop(context);
                if (onClick != null) {
                  onClick();
                }
              },
            ));
  }

  // static destroyDialogResponse(BuildContext context) {
  //   Navigator.pop(context);
  // }
}
