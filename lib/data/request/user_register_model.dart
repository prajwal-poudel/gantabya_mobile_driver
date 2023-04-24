// import 'dart:io';

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'user_register_model.freezed.dart';
// part 'user_register_model.g.dart';

// @freezed
// class PersonalInformationModel with _$PersonalInformationModel {
//   const factory PersonalInformationModel({
//     @JsonKey(name: 'full_name') String? fullName,
//     @JsonKey(name: 'gender') String? gender,
//     @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
//     @JsonKey(name: 'email') String? email,
//     @JsonKey(name: 'password') String? password,
//     @JsonKey(name: 'profile_picture') File? profilePicture,
//   }) = _PersonalInformationModel;

//   factory PersonalInformationModel.fromJson(Map<String, Object?> json) =>
//       _$PersonalInformationModelFromJson(json);
// }

import 'dart:io';

import 'package:dio/dio.dart';

// class UserRegisterationModel {
//   UserRegisterationModel(
//       {this.fullName,
//       this.gender,
//       this.dateOfBirth,
//       this.email,
//       this.password,
//       this.profilePicture,
//       this.userRole});

//   String? fullName;
//   String? gender;
//   DateTime? dateOfBirth;
//   String? email;
//   String? password;
//   File? profilePicture;
//   String? userRole = "Driver";

//   Future<Map<String, dynamic>> toJson() async {
//     final map = <String, dynamic>{};
//     map['full_name'] = fullName;
//     map['gender'] = gender;
//     map['date_of_birth'] = dateOfBirth;
//     map['email'] = email;
//     map['password'] = password;
//     if (profilePicture != null) {
//       map['profile_picture'] = await MultipartFile.fromFile(
//         profilePicture!.path,
//         filename: profilePicture?.path.split('/').last,
//       );
//     }
//     map["user_role"] = userRole;

//     return map;
//   }

//   UserRegisterationModel fromJson(Map<String, dynamic> map) {
//     return UserRegisterationModel(
//         fullName: map["full_name"],
//         gender: map["gender"],
//         dateOfBirth: map["date_of_birth"],
//         email: map["email"],
//         password: map["password"],
//         profilePicture: map["profile_picture"],
//         userRole: map["user_role"]);
//   }
// }

// class DriverRegistrationModel {
//   DriverRegistrationModel({this.verificationImage});
//   int? verified = 0;
//   File? verificationImage;
//   double? ratings = 0.0;

//   Future<Map<String, dynamic>> toJson() async {
//     final map = <String, dynamic>{};
//     map['verified'] = verified;
//     map['ratings'] = ratings;

//     if (verificationImage != null) {
//       map['verification_mage'] = await MultipartFile.fromFile(
//         verificationImage!.path,
//         filename: verificationImage?.path.split('/').last,
//       );
//     }

//     return map;
//   }

//   DriverRegistrationModel fromJson(Map<String, dynamic> map) {
//     return DriverRegistrationModel(
//       verificationImage: map["verification_image"],
//     );
//   }
// }

class BasicInfoModal {
  BasicInfoModal(
      {this.fullName,
      this.gender,
      this.dateOfBirth,
      this.email,
      this.password,
      this.profilePicture});

  String? fullName;
  String? gender;
  DateTime? dateOfBirth;
  String? email;
  String? password;
  File? profilePicture;

  Future<Map<String, dynamic>> toJson() async {
    final map = <String, dynamic>{};
    map['full_name'] = fullName;
    map['gender'] = gender;
    map['date_of_birth'] = dateOfBirth;
    map['email'] = email;
    map['password'] = password;
    if (profilePicture != null) {
      map['profile_picture'] = await MultipartFile.fromFile(
        profilePicture!.path,
        filename: profilePicture?.path.split('/').last,
      );
    }

    return map;
  }

  BasicInfoModal fromJson(Map<String, dynamic> map) {
    return BasicInfoModal(
        fullName: map["full_name"],
        gender: map["gender"],
        dateOfBirth: map["date_of_birth"],
        email: map["email"],
        password: map["password"],
        profilePicture: map["profile_picture"]);
  }
}

class DriverLicenseModel {
  DriverLicenseModel({this.licenseNumber, this.licenseImage});

  String? licenseNumber;

  File? licenseImage;

  Future<Map<String, dynamic>> toJson() async {
    final map = <String, dynamic>{};
    map['license_number'] = licenseNumber;

    if (licenseImage != null) {
      map['license_image'] = await MultipartFile.fromFile(
        licenseImage!.path,
        filename: licenseImage?.path.split('/').last,
      );
    }

    return map;
  }

  DriverLicenseModel fromJson(Map<String, dynamic> map) {
    return DriverLicenseModel(
        licenseNumber: map["license_number"],
        licenseImage: map["license_image"]);
  }
}

class IdConfirmationModel {
  IdConfirmationModel({this.confirmationImage});

  File? confirmationImage;

  Future<Map<String, dynamic>> toJson() async {
    final map = <String, dynamic>{};

    if (confirmationImage != null) {
      map['confirmation_image'] = await MultipartFile.fromFile(
        confirmationImage!.path,
        filename: confirmationImage?.path.split('/').last,
      );
    }

    return map;
  }

  IdConfirmationModel fromJson(Map<String, dynamic> map) {
    return IdConfirmationModel(confirmationImage: map["confirmation_image"]);
  }
}

class VehicleInfoModel {
  VehicleInfoModel({this.vehicleNumber, this.billbookImage, this.vehicleImage});

  String? vehicleNumber;
  File? vehicleImage;
  File? billbookImage;

  Future<Map<String, dynamic>> toJson() async {
    final map = <String, dynamic>{};
    map['vehicle_number'] = vehicleNumber;

    if (vehicleImage != null) {
      map['vehicle_image'] = await MultipartFile.fromFile(
        vehicleImage!.path,
        filename: vehicleImage?.path.split('/').last,
      );
    }
    if (billbookImage != null) {
      map['billbook_image'] = await MultipartFile.fromFile(
        billbookImage!.path,
        filename: billbookImage?.path.split('/').last,
      );
    }

    return map;
  }

  VehicleInfoModel fromJson(Map<String, dynamic> map) {
    return VehicleInfoModel(
      vehicleNumber: map["vehicle_number"],
      vehicleImage: map["vehicle_image"],
      billbookImage: map["billbook_image"],
    );
  }
}
