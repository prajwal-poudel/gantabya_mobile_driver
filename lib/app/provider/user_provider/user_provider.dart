import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gantabya_app/data/request/user_register_model.dart';
import 'package:gantabya_app/data/response/user_model_response.dart';
import 'package:gantabya_app/presentation/register/basic_info.dart';
import 'package:gantabya_app/presentation/register/id_confirmation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/network/dio_factory.dart';
import '../../../data/network/error_handler.dart';
import '../../../domain/model/exception_model.dart';
import '../../api_endpoints_manager.dart';
import '../../app_prefs.dart';
import '../../functions.dart';

class UserProvider extends ChangeNotifier {
  UserDataModel? _userData;
  bool _authorized = false;
  BasicInfoModal? _basicInfo;
  DriverLicenseModel? _driverLicense;
  IdConfirmationModel? _idConfirmation;
  VehicleInfoModel? _vehicleInfo;

  UserDataModel get userData {
    return _userData!;
  }

  BasicInfoModal get basicInfo {
    return _basicInfo!;
  }

  DriverLicenseModel get driverLicense {
    return _driverLicense!;
  }

  IdConfirmationModel get idConfirmation {
    return _idConfirmation!;
  }

  VehicleInfoModel get vehicleInfo {
    return _vehicleInfo!;
  }

  bool get basicInfoFilled {
    if (_basicInfo == null) {
      return false;
    } else {
      return true;
    }
  }

  bool get driverLicenseFilled {
    if (_driverLicense == null) {
      return false;
    } else {
      return true;
    }
  }

  bool get idConfirmationFilled {
    if (_idConfirmation == null) {
      return false;
    } else {
      return true;
    }
  }

  bool get vehicleInfoFilled {
    if (_vehicleInfo == null) {
      return false;
    } else {
      return true;
    }
  }

  registerBasicInfo(Map<String, dynamic> data) {
    _basicInfo = BasicInfoModal().fromJson(data);
    log(_basicInfo!.dateOfBirth.toString());
    notifyListeners();
  }

  registerDriverLicense(Map<String, dynamic> data) {
    _driverLicense = DriverLicenseModel().fromJson(data);
    log(_driverLicense!.licenseNumber!);
    notifyListeners();
  }

  registerIdConfirmation(Map<String, dynamic> data) {
    _idConfirmation = IdConfirmationModel().fromJson(data);

    notifyListeners();
  }

  registerVehicleInfo(Map<String, dynamic> data) {
    _vehicleInfo = VehicleInfoModel().fromJson(data);

    notifyListeners();
  }

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();

  clearAllVariable() {
    phoneController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    fullnameController.clear();
  }

  bool get authorized {
    return _authorized;
  }

  getLogedInUserData() async {
    try {
      Dio dio = await DioFactory().getAuthDio();
      Response resultData = await dio.get(ApiEndpointsManager.userInfo);
      _userData = UserDataModel.fromJson(resultData.data);

      notifyListeners();
    } catch (err) {
      rethrow;
    }
  }

  Future<ServerErrorHandler> loginUser() async {
    try {
      Dio dio = await DioFactory().getDio();
      // FormData formData = FormData.fromMap({
      //   "phone_number": phoneController.text,
      //   "password": passwordController.text
      // });
      Response response = await dio.post(ApiEndpointsManager.loginUser, data: {
        "phone_number": phoneController.text,
        "password": passwordController.text
      });
      DataSource responseType =
          exceptionTypeAccStatusCodeReturn(response.statusCode ?? 101);
      if (responseType == DataSource.SUCCESS) {
        // log(response.data.toString());
        AppPreferences(await SharedPreferences.getInstance())
            .setToken("Bearer ${response.data["accessToken"]}");
      }
      return ServerErrorHandler(responseType, response.data["message"]);
    } catch (err) {
      return ServerErrorHandler(DataSource.UNKNOWN_ERROR, "Undefined Error");
    }
  }

  Future<bool> checkAuthentication() async {
    Dio dio = await DioFactory().getAuthDio();
    Response response = await dio.get(ApiEndpointsManager.checkAuthentication);
    if (response.statusCode == 200) {
      _authorized = true;
    } else {
      _authorized = false;
    }
    return _authorized;
  }

  Future<ServerErrorHandler> registerUser() async {
    try {
      Dio dio = await DioFactory().getDio();
      // FormData formData = FormData.fromMap({
      //   "phone_number": phoneController.text,
      //   "password": passwordController.text
      // });
      Response response =
          await dio.post(ApiEndpointsManager.regiserUser, data: {
        "full_name": fullnameController.text,
        "user_role": "user",
        "phone_number": phoneController.text,
        "password": passwordController.text,
        "drivers": null
      });
      DataSource responseType =
          exceptionTypeAccStatusCodeReturn(response.statusCode ?? 101);

      return ServerErrorHandler(responseType, response.data["message"]);
    } catch (err) {
      return ServerErrorHandler(DataSource.UNKNOWN_ERROR, "Undefined Error");
    }
  }
}
