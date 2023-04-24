import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gantabya_app/data/request/user_register_model.dart';
import 'package:gantabya_app/data/response/user_model_response.dart';
import 'package:gantabya_app/data/response/vehicle_type_response.dart';
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
  File? _profilePicture;
  File? _idConfirmationImage;
  File? _billbookImage;
  File? _licenseImage;
  File? _vehicleImage;
  String _selectedGender = "Male";
  String? _dob;

  String get selectedGender {
    return _selectedGender;
  }

  String? get dob {
    return _dob;
  }

  set setGender(String gender) {
    _selectedGender = gender;
    notifyListeners();
  }

  set setDob(String dob) {
    _dob = dob;
    notifyListeners();
  }

  set setProfilePicture(File image) {
    _profilePicture = image;
    notifyListeners();
  }

  set setBillbookImage(File image) {
    _billbookImage = image;
    notifyListeners();
  }

  set setIdConfirmationImage(File image) {
    _idConfirmationImage = image;
    notifyListeners();
  }

  set setVehicleImage(File image) {
    _vehicleImage = image;
    notifyListeners();
  }

  set setLicenseImage(File image) {
    _licenseImage = image;
    notifyListeners();
  }

  File? get profilePicture {
    return _profilePicture;
  }

  File? get vehicleImage {
    return _vehicleImage;
  }

  File? get billbookImage {
    return _billbookImage;
  }

  File? get idConfirmationImage {
    return _idConfirmationImage;
  }

  File? get licenseImage {
    return _licenseImage;
  }

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

  registerBasicInfo() {
    Map<String, dynamic> dataMap = {
      "full_name": fullnameController.text,
      "gender": _selectedGender,
      "date_of_birth": DateTime.parse(_dob!),
      "email": emailController.text,
      "password": passwordController.text,
      "profile_picture": _profilePicture
    };
    _basicInfo = BasicInfoModal().fromJson(dataMap);
    log(_basicInfo!.dateOfBirth.toString());
    notifyListeners();
  }

  registerDriverLicense() {
    Map<String, dynamic> data = {
      "license_number": licenseNumberController.text,
      "license_image": _licenseImage
    };
    _driverLicense = DriverLicenseModel().fromJson(data);
    log(_driverLicense!.licenseNumber!);
    notifyListeners();
  }

  registerIdConfirmation() {
    Map<String, dynamic> data = {"confirmation_image": _idConfirmationImage};
    _idConfirmation = IdConfirmationModel().fromJson(data);

    notifyListeners();
  }

  registerVehicleInfo() {
    Map<String, dynamic> data = {
      "vehicle_number": vehicleNumberController.text,
      "billbook_image": _billbookImage,
      "vehicle_image": _vehicleImage
    };
    _vehicleInfo = VehicleInfoModel().fromJson(data);

    notifyListeners();
  }

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController licenseNumberController = TextEditingController();
  TextEditingController vehicleNumberController = TextEditingController();

  clearAllVariable() {
    phoneController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    fullnameController.clear();
    emailController.clear();
    licenseNumberController.clear();
    vehicleNumberController.clear();
    _basicInfo = null;
    _driverLicense = null;
    _idConfirmation = null;
    _vehicleInfo = null;
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

      Response response = await dio.post(ApiEndpointsManager.loginUser, data:
          //  formData
          {
        "phone_number": phoneController.text,
        "password": passwordController.text,
        "user_role": "Driver"
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

  Future<ServerErrorHandler> registerUser(VehicleTypeModel vehicleType) async {
    try {
      Dio dio = await DioFactory().getDio();
      // FormData formData = FormData.fromMap({
      //   "phone_number": phoneController.text,
      //   "password": passwordController.text
      // });
      Map<String, dynamic> basicInfoDetails = await basicInfo.toJson();
      Map<String, dynamic> verificationImage = await idConfirmation.toJson();
      Map<String, dynamic> licenseDetails = await driverLicense.toJson();
      Map<String, dynamic> vehicleDetails = await vehicleInfo.toJson();
      Map<String, dynamic> registrationData = {
        "full_name": basicInfoDetails["full_name"],
        "email": basicInfoDetails["email"],
        "password": basicInfoDetails["password"],
        "user_role": "Driver",
        "phone_number": phoneController.text,
        "profile_picture": basicInfoDetails["profile_picture"],
        "gender": basicInfoDetails["gender"],
        "ratings": 0.0,
        "verified": 0,
        "verification_image": verificationImage["confirmation_image"],
        "license_number": licenseDetails["license_number"],
        "license_image": licenseDetails["license_image"],
        "vehicle_number": vehicleDetails["vehicle_number"],
        "billbook_image": vehicleDetails["billbook_image"],
        "vehicle_type_id": vehicleType.id
      };
      // var decodedData = jsonEncode(registrationData);
      FormData formData = FormData.fromMap(registrationData);
      Response response =
          await dio.post(ApiEndpointsManager.regiserUser, data: formData);
      DataSource responseType =
          exceptionTypeAccStatusCodeReturn(response.statusCode ?? 101);

      return ServerErrorHandler(responseType, response.data["message"]);
    } catch (err) {
      return ServerErrorHandler(DataSource.UNKNOWN_ERROR, "Undefined Error");
    }
  }

  Future<ServerErrorHandler> phoneNumberChecking() async {
    try {
      Dio dio = await DioFactory().getDio();
      Response response = await dio.post(ApiEndpointsManager.checkPhoneNumber,
          data: {"phone_number": phoneController.text});

      DataSource responseType =
          exceptionTypeAccStatusCodeReturn(response.statusCode ?? 101);

      return ServerErrorHandler(responseType, response.data["message"]);
    } catch (e) {
      return ServerErrorHandler(DataSource.UNKNOWN_ERROR, e.toString());
    }
  }
}
