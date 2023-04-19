import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gantabya_app/data/response/vehicle_type_response.dart';

part 'user_model_response.freezed.dart';
part 'user_model_response.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'user_role') String? userRole,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'drivers') DriverDataModel? driverData,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, Object?> json) =>
      _$UserDataModelFromJson(json);
}

@freezed
class DriverDataModel with _$DriverDataModel {
  const factory DriverDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'verified') dynamic verified,
    @JsonKey(name: 'ratings') double? ratings,
    @JsonKey(name: 'wallets') WalletDataModel? wallet,
    @JsonKey(name: 'vehicle_details') VehicleDataModel? vehicleInfo,
  }) = _DriverDataModel;

  factory DriverDataModel.fromJson(Map<String, Object?> json) =>
      _$DriverDataModelFromJson(json);
}

@freezed
class WalletDataModel with _$WalletDataModel {
  const factory WalletDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'current_balance') double? currentBalance,
    @JsonKey(name: 'freezed_balance') double? freezedBalance,
    @JsonKey(name: 'actual_balance') double? actualBalance,
  }) = _WalletDataModel;

  factory WalletDataModel.fromJson(Map<String, Object?> json) =>
      _$WalletDataModelFromJson(json);
}

@freezed
class VehicleDataModel with _$VehicleDataModel {
  const factory VehicleDataModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'vehicle_number') String? vehicleNumber,
    @JsonKey(name: 'billbook_image') String? billbookImage,
    @JsonKey(name: 'license_image') String? licenseImage,
    @JsonKey(name: 'license_number') String? licenseNumber,
    @JsonKey(name: 'vehicle_types') VehicleTypeModel? vehicleType,
  }) = _VehicleDataModel;

  factory VehicleDataModel.fromJson(Map<String, Object?> json) =>
      _$VehicleDataModelFromJson(json);
}
