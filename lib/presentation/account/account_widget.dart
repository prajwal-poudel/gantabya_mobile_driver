import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class AccountProperty {
  String title;
  IconData icon;
  Function onClick;

  AccountProperty(
      {required this.title, required this.icon, required this.onClick});
}

class AccountPropertyWidget extends StatelessWidget {
  String title;
  List<AccountProperty> properties;
  AccountPropertyWidget(
      {required this.title, required this.properties, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s1_5,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p40, vertical: AppPadding.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: ColorManager.lightGrey),
            ),
            const SizedBox(
              height: AppSize.s28,
            ),
            Column(
                children: properties
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: AppPadding.p20),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                e.icon,
                                color: ColorManager.primary,
                              ),
                              const SizedBox(
                                width: AppSize.s18,
                              ),
                              Text(
                                e.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: ColorManager.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList())
          ],
        ),
      ),
    );
  }
}
