import 'package:flutter/material.dart';

import '../resources/values_manager.dart';

class AppBarForRegistration extends StatelessWidget {
  bool backArrowRequired;
  String title;
  AppBarForRegistration(
      {required this.backArrowRequired, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s1_5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: AppSize.s60,
        child: Row(
          children: [
            if (backArrowRequired)
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            const SizedBox(
              width: AppSize.s14,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
