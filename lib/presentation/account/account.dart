import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  static const String route = "/account";
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserProvider>(builder: (context, userProvider, _) {
        return SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: AppSize.s250,
                  width: double.infinity,
                  // color: Colors.blue,
                ),
                Container(
                  height: AppSize.s200,
                  width: double.infinity,
                  color: ColorManager.darkGreen,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(
                      vertical: AppPadding.p18, horizontal: AppPadding.p18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            userProvider.userData.profilePicture ??
                                "https://s3-alpha-sig.figma.com/img/1327/9a67/f2a75b6afccbe62f44368af15331178c?Expires=1682294400&Signature=ll9ofVsFwJxhfy9pMpD0oQNRfwMIr8bCiVxZLp~0DDt5naR3py~syckQIa8kjp2M5iJJ-uv~ZR0ijwqgLuhVX01NC1iZ0WYeI8FGt3Oz4r1OjSU3mJvrOydKFGyiJYUiuhMDzAXk4Ehuh~-wF4BQ60uxg9yJPGRXptiwN48aE1aNhf-nD0FZvGcaISicDXbwocf7l1rxB-IUW8q9cJ4t0sHVBASsqcmVdBwa5dA3XtpF32KDZpAPYFxKLvkY~6fJekyTJ8HGbwWtY7QMneA8frpbWBZETSOqSH0JqV36vrPWoSSkYfecOaW7ZQ63COWlbTC81zqzzfUjwsJUtUTB4A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.s20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userProvider.userData.fullName ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    color: ColorManager.white,
                                    fontSize: AppSize.s20),
                          ),
                          const SizedBox(
                            height: AppSize.s4,
                          ),
                          Text(
                            userProvider.userData.phoneNumber ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: ColorManager.white,
                                ),
                          ),
                          const SizedBox(
                            height: AppSize.s4,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p12,
                                vertical: AppSize.s1_5),
                            decoration: BoxDecoration(
                                color: ColorManager.white,
                                borderRadius:
                                    BorderRadius.circular(AppSize.s16)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: ColorManager.primary,
                                ),
                                const SizedBox(
                                  width: AppSize.s4,
                                ),
                                Text(
                                  userProvider.userData.driverData!.ratings
                                      .toString(),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.05,
                  bottom: 0,
                  child: Card(
                    child: Container(
                      height: AppSize.s100,
                      width: MediaQuery.of(context).size.width * 0.9,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: AppSize.s8, horizontal: AppSize.s8),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: ColorManager.lightGrey))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Total Balance",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(userProvider
                                    .userData.driverData!.wallet!.actualBalance
                                    .toString())
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: AppSize.s8, horizontal: AppSize.s8),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: ColorManager.lightGrey))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Current Balance",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(userProvider
                                    .userData.driverData!.wallet!.currentBalance
                                    .toString())
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: AppSize.s8, horizontal: AppSize.s8),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: ColorManager.lightGrey))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Freezed Balance",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(userProvider
                                    .userData.driverData!.wallet!.freezedBalance
                                    .toString())
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(),
            )
          ],
        ));
      }),
    );
  }
}
