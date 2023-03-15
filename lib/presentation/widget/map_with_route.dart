import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gantabya_app/presentation/resources/assets_manager.dart';
import 'package:gantabya_app/presentation/resources/color_manager.dart';
import 'package:gantabya_app/presentation/resources/values_manager.dart';

class MapWithRoute extends StatelessWidget {
  MapController mapController;
  GeoPoint destination;
  MapWithRoute(
      {required this.mapController, required this.destination, super.key});

  Future<void> _drawRoute() async {
    RoadInfo roadInfo = await mapController.drawRoad(
        await mapController.myLocation(), destination

        // roadColor: Colors.green,
        // roadWidth: 7.0,
        );
    print("${roadInfo.distance}km");
    print("${roadInfo.duration}sec");
  }

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      // isPicker: true,
      // showContributorBadgeForOSM: true,
      onLocationChanged: (latlng) {
        print(latlng.toString());
      },
      onMapIsReady: (isReady) {
        if (isReady) {
          _drawRoute();
          mapController.addMarker(destination,
              markerIcon: MarkerIcon(
                iconWidget: SvgPicture.asset(
                  ImageAssets.destinationMarker,
                  width: AppSize.s100,
                ),
              ));
        }
      },
      showDefaultInfoWindow: true,
      showZoomController: true,
      androidHotReloadSupport: true,
      controller: mapController,
      trackMyPosition: true,
      initZoom: 14,
      minZoomLevel: 8,
      maxZoomLevel: 18,
      stepZoom: 1.0,

      userLocationMarker: UserLocationMaker(
        personMarker: MarkerIcon(
          // icon: Icon(
          //   Icons.person,
          //   color: Colors.red,
          //   size: 68,
          // ),
          iconWidget: SvgPicture.asset(
            ImageAssets.initialLocationMarker,
            width: AppSize.s65,
          ),
        ),
        directionArrowMarker: const MarkerIcon(
          icon: Icon(
            Icons.double_arrow,
            size: 48,
          ),
        ),
      ),
      roadConfiguration: RoadOption(
        roadColor: ColorManager.primary,
        roadWidth: 10,
      ),

      // roadConfiguration: RoadConfiguration(
      //   startIcon: const MarkerIcon(
      //     icon: Icon(
      //       Icons.person,
      //       size: 64,
      //       color: Colors.brown,
      //     ),
      //   ),
      // endIcon: const MarkerIcon(
      //   icon: Icon(
      //     Icons.room,
      //     size: 64,
      //     color: Colors.brown,
      //   ),
      // ),
      //   roadColor: Colors.yellowAccent,
      // ),
      // markerOption: MarkerOption(
      //     defaultMarker: const MarkerIcon(
      //   icon: Icon(
      //     Icons.person_pin_circle,
      //     color: Colors.blue,
      //     size: 56,
      //   ),
      // )),
    );
  }
}
