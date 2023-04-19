import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class LabelWithRequired extends StatelessWidget {
  String labelText;
  bool isRequired;
  LabelWithRequired(
      {required this.labelText, required this.isRequired, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p12),
      child: Row(
        children: [
          Text(
            labelText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            width: AppSize.s4,
          ),
          if (isRequired)
            Text(
              "*",
              style: TextStyle(color: ColorManager.error),
            )
        ],
      ),
    );
  }
}
