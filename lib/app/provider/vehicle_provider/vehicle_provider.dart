import 'dart:developer';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gantabya_app/app/api_endpoints_manager.dart';
import 'package:gantabya_app/data/network/dio_factory.dart';
import 'package:gantabya_app/data/response/vehicle_type_response.dart';

import '../../../data/network/error_handler.dart';
import '../../../domain/model/exception_model.dart';
import '../../functions.dart';

class VehicleProvider extends ChangeNotifier {
  List<VehicleTypeModel> _vehicleTypes = [];
  VehicleTypeModel _selectedVehicle = VehicleTypeModel();

  List<VehicleTypeModel> get vehicleTypes {
    return [..._vehicleTypes];
  }

  VehicleTypeModel get selectedVehicle {
    return _selectedVehicle;
  }

  selectVehicle(VehicleTypeModel vehicle) {
    _selectedVehicle = vehicle;
  }

  Future<ServerErrorHandler> getVehicleType() async {
    try {
      Dio dio = await DioFactory().getDio();
      Response response = await dio.get(ApiEndpointsManager.vehicleType);
      DataSource responseType =
          exceptionTypeAccStatusCodeReturn(response.statusCode ?? 101);
      if (responseType == DataSource.SUCCESS) {
        // log(response.data.toString());
        _vehicleTypes = response.data
            .map<VehicleTypeModel>((e) => VehicleTypeModel.fromJson(e))
            .toList();
        log(_vehicleTypes.length.toString());
        notifyListeners();
      }
      return ServerErrorHandler(responseType, response.data["message"]);
    } catch (err) {
      return ServerErrorHandler(DataSource.UNKNOWN_ERROR, "Undefined Error");
    }
  }
}
