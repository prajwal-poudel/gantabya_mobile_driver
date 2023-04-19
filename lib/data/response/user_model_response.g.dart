// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      userRole: json['user_role'] as String?,
      profilePicture: json['profile_picture'] as String?,
      phoneNumber: json['phone_number'] as String?,
      gender: json['gender'] as String?,
      driverData: json['drivers'] == null
          ? null
          : DriverDataModel.fromJson(json['drivers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'user_role': instance.userRole,
      'profile_picture': instance.profilePicture,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'drivers': instance.driverData,
    };

_$_DriverDataModel _$$_DriverDataModelFromJson(Map<String, dynamic> json) =>
    _$_DriverDataModel(
      id: json['id'] as int?,
      verified: json['verified'],
      ratings: (json['ratings'] as num?)?.toDouble(),
      wallet: json['wallets'] == null
          ? null
          : WalletDataModel.fromJson(json['wallets'] as Map<String, dynamic>),
      vehicleInfo: json['vehicle_details'] == null
          ? null
          : VehicleDataModel.fromJson(
              json['vehicle_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverDataModelToJson(_$_DriverDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verified': instance.verified,
      'ratings': instance.ratings,
      'wallets': instance.wallet,
      'vehicle_details': instance.vehicleInfo,
    };

_$_WalletDataModel _$$_WalletDataModelFromJson(Map<String, dynamic> json) =>
    _$_WalletDataModel(
      id: json['id'] as int?,
      currentBalance: (json['current_balance'] as num?)?.toDouble(),
      freezedBalance: (json['freezed_balance'] as num?)?.toDouble(),
      actualBalance: (json['actual_balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_WalletDataModelToJson(_$_WalletDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'current_balance': instance.currentBalance,
      'freezed_balance': instance.freezedBalance,
      'actual_balance': instance.actualBalance,
    };

_$_VehicleDataModel _$$_VehicleDataModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleDataModel(
      id: json['id'] as int?,
      vehicleNumber: json['vehicle_number'] as String?,
      billbookImage: json['billbook_image'] as String?,
      licenseImage: json['license_image'] as String?,
      licenseNumber: json['license_number'] as String?,
      vehicleType: json['vehicle_types'] == null
          ? null
          : VehicleTypeModel.fromJson(
              json['vehicle_types'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleDataModelToJson(_$_VehicleDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_number': instance.vehicleNumber,
      'billbook_image': instance.billbookImage,
      'license_image': instance.licenseImage,
      'license_number': instance.licenseNumber,
      'vehicle_types': instance.vehicleType,
    };
