import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gantabya_app/app/provider/location_provider/location_provider.dart';
import 'package:gantabya_app/app/provider/user_provider/user_provider.dart';
import 'package:gantabya_app/data/response/user_model_response.dart';
import 'package:gantabya_app/domain/model/model.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/routes_manager.dart';
import 'package:gantabya_app/presentation/resources/strings_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';
import 'package:gantabya_app/presentation/widget/dialog_box.dart';
import 'package:gantabya_app/presentation/widget/map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import '../../app/constant.dart';
import '../../app/functions.dart';
import '../../domain/model/customer_data_model.dart';

import '../widget/ride_information.dart';
import './home_page_widgets.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class HomePage extends StatefulWidget {
  static const route = "/home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IO.Socket? socket;
  bool isActive = false;
  bool isExpanded = false;
  List<CustomerDataModel> incommingRequests = [];

  double containerHeight = AppSize.s80;

  MapController mapController = MapController.withUserPosition(
    // initMapWithUserPosition: true,
    // initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: const BoundingBox.world(),
  );
  UserDataModel? driverData;
  @override
  void initState() {
    super.initState();
  }

  getCurrentUserData() async {
    driverData = Provider.of<UserProvider>(context, listen: false).userData;
  }

  // getCurrentLocation() async {}

  initSocket() async {
    Position currentLocation =
        await Provider.of<LocationProvider>(context, listen: false)
            .fetchCurrentLocation();
    getCurrentUserData();

    socket = IO.io(Constant.baseUrl, <String, dynamic>{
      'autoConnect': false,
      'transports': ['websocket'],
    });
    socket?.connect();
    socket?.onConnect((_) {
      print('Connection established');
      final driverInfo = {
        "driver_id": driverData?.id,
        "driver_fullname": driverData?.fullName,
        "driver_profile_picture": driverData?.profilePicture,
        "vehicle_name":
            driverData?.driverData!.vehicleInfo!.vehicleType!.vehicleName,
        "current_location": {
          "lat": currentLocation.latitude,
          "lng": currentLocation.longitude
        },
        "current_balance": driverData?.driverData!.wallet!.currentBalance
      };
      socket?.emit("driver", driverInfo);
    });

    socket?.on("reqDriver", (data) {
      data["driverId"] = 1;
      // customerPopup(data);
      log(data.toString());
      var incomingData = CustomerDataModel.fromJson(data["booking"]);
      setState(() {
        incommingRequests.add(incomingData);
      });
      expandableWidget();
    });

    socket?.on("bookingMessage", (customer) {
      log(customer.toString());
      CustomerDataModel customerData = CustomerDataModel.fromJson(customer);
      Navigator.pushNamed(context, Routes.rideConfirmation,
          arguments: customerData);
    });
  }

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
                                  if (isActive) {
                                    initSocket();
                                  }
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
              SimpleMap(mapController: mapController),
              ActiveInactiveMessage(
                isActive: isActive,
                onClose: () {
                  print("Cross");
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 800),
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
                                expandableWidget();
                                // customerPopup();
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
                                  isExpanded
                                      ? SvgPicture.asset(ImageAssets.arrowDown)
                                      : SvgPicture.asset(ImageAssets.arrowUp)
                                ],
                              ),
                            )
                          ],
                        ),
                        incommingRequests.isEmpty
                            ? Text(
                                AppString.noIncomingRequest,
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            : isExpanded
                                ? Expanded(
                                    child: ListView.builder(
                                        itemCount: incommingRequests.length,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: AppPadding.p8),
                                              child: Card(
                                                elevation: AppSize.s1_5,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: AppSize.s12),
                                                  child: Column(
                                                    children: [
                                                      RideInformation(
                                                        customerInfo:
                                                            incommingRequests[
                                                                index],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Consumer<
                                                                  UserProvider>(
                                                              builder: (context,
                                                                  userProvider,
                                                                  _) {
                                                            return ElevatedButton(
                                                                style: ButtonStyle(
                                                                    fixedSize: MaterialStateProperty.all(const Size(
                                                                        AppSize
                                                                            .s150,
                                                                        AppSize
                                                                            .s40)),
                                                                    backgroundColor:
                                                                        MaterialStateProperty.all(ColorManager
                                                                            .green)),
                                                                onPressed: () {
                                                                  // call socket channel
                                                                  socket?.emit(
                                                                      "driverConfirm",
                                                                      {
                                                                        "driver_id": userProvider
                                                                            .userData
                                                                            .id,
                                                                        "customer_id":
                                                                            incommingRequests[index].id
                                                                      });
                                                                },
                                                                child: const Text(
                                                                    "Accept"));
                                                          }),
                                                          ElevatedButton(
                                                              style:
                                                                  ButtonStyle(
                                                                fixedSize: MaterialStateProperty
                                                                    .all(const Size(
                                                                        AppSize
                                                                            .s150,
                                                                        AppSize
                                                                            .s40)),
                                                              ),
                                                              onPressed: () {
                                                                // remove from list
                                                                setState(() {
                                                                  incommingRequests
                                                                      .removeAt(
                                                                          index);
                                                                });
                                                                expandableWidget();
                                                              },
                                                              child: const Text(
                                                                  "Reject")),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                  )
                                : Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppSize.s12,
                                        vertical: AppSize.s8),
                                    width: double.infinity,
                                    color: ColorManager.primary,
                                    child: Text(
                                      "You have ${incommingRequests.length} incomming requests",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(color: ColorManager.white),
                                    ),
                                  )
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

  expandableWidget() {
    if (!isExpanded) {
      if (incommingRequests.length > 1) {
        setState(() {
          containerHeight = MediaQuery.of(context).size.height * 0.7;
        });
      } else if (incommingRequests.length == 1) {
        setState(() {
          containerHeight = AppSize.s400;
        });
      } else {
        setState(() {
          containerHeight = AppSize.s100;
        });
      }
    } else {
      setState(() {
        containerHeight = AppSize.s100;
      });
    }

    setState(() {
      isExpanded = !isExpanded;
    });
  }
}
