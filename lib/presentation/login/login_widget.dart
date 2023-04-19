import 'package:flutter/material.dart';

import '../resources/values_manager.dart';

class FormLabel extends StatelessWidget {
  String labelText;
  FormLabel({required this.labelText, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: AppPadding.p12),
        child: Text(
          labelText,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
