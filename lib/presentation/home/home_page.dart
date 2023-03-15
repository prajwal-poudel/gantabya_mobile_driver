import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/widget/dialog_box.dart';
import 'package:gantabya_app/presentation/widget/map.dart';
import './home_page_widgets.dart';

class HomePage extends StatefulWidget {
  static const route = "/home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isActive = false;

  double containerHeight = AppSize.s60;

  MapController mapController = MapController.withUserPosition(
    // initMapWithUserPosition: true,
    // initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: const BoundingBox.world(),
  );
  @override
  Widget build(BuildContext context) {
    return _homeBaseUi();
  }

  Widget _homeBaseUi() {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p28, vertical: AppPadding.p8),
            width: double.infinity,
            height: AppSize.s100,
            color: ColorManager.white,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: AppPadding.p6, horizontal: AppPadding.p6),
                    decoration: BoxDecoration(
                        color: ColorManager.primaryOpacity70,
                        borderRadius: BorderRadius.circular(AppSize.s8)),
                    child: const Icon(FontAwesomeIcons.solidBell)),
                Text(isActive ? AppString.online : AppString.offline),
                // Switch(value: false, onChanged: (val) {}),
                CupertinoSwitch(
                    // thumbColor:
                    //     isActive ? ColorManager.primary : ColorManager.black,
                    // trackColor: ColorManager.black,
                    activeColor: ColorManager.primary,
                    value: isActive,
                    onChanged: (val) {
                      showDialog(
                          context: context,
                          builder: (_) => ConfirmationDialog(
                                confirmationTitle: isActive
                                    ? AppString.offlineConfirmationTitle
                                    : AppString.onlineConfirmationTitle,
                                confirmationMessage: isActive
                                    ? AppString.offlineConfirmationMessage
                                    : AppString.onlineConfirmationMessage,
                                confirmationFunction: () {
                                  setState(() {
                                    isActive = !isActive;
                                  });
                                  Navigator.pop(context);
                                },
                              ));
                    })
              ],
            ),
          ),
          // ActiveInactiveMessage(
          //   isActive: isActive,
          //   onClose: () {
          //     print("Cross");
          //   },
          // )
          Expanded(
              child: Stack(
            children: [
              Container(
                  // color: Colors.red,

                  // map goes here
                  child: SimpleMap(mapController: mapController)),
              ActiveInactiveMessage(
                isActive: isActive,
                onClose: () {
                  print("Cross");
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear,
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p8, vertical: AppPadding.p8),
                    color: Colors.white,
                    height: containerHeight,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.request,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            InkWell(
                              onTap: () {
                                // setState(() {
                                //   containerHeight = AppSize.s180;
                                // });
                                showDialog(
                                    context: context,
                                    builder: (_) => RideRequestDialog(
                                          confirmationFunction: () {},
                                          customerInfo: CustomerInfo(
                                              id: 1,
                                              profileImage:
                                                  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                                              fullName: "John Doe",
                                              distanceFromDriver: 2.5,
                                              totalCost: 100.50,
                                              dropOffAddress:
                                                  "Tilottama-2,Rupandehi",
                                              pickUpAddress:
                                                  "Butwal-10,kalikanagar",
                                              rideDistance: 2.0),
                                        ));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    AppString.more,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  const SizedBox(
                                    width: AppSize.s12,
                                  ),
                                  SvgPicture.asset(ImageAssets.arrowUp)
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(
                          AppString.noIncomingRequest,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    )
                    // ExpandablePanel(
                    //   theme: ExpandableThemeData(
                    //       headerAlignment: ExpandablePanelHeaderAlignment.center,
                    //       iconSize: 15,
                    //       fadeCurve: Curves.bounceIn),
                    //   header: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    // Text(
                    //   "Request",
                    //   style: Theme.of(context).textTheme.titleLarge,
                    // ),
                    //     ],
                    //   ),
                    //   collapsed: Text("No incoming request"),
                    //   // Column(
                    //   //   children: [
                    //   //     Row(
                    //   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   //       children: [Text("Request"), Text("More")],
                    //   //     )
                    //   //   ],
                    //   // ),
                    //   expanded: Text("hello"),
                    // ),
                    ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
