// class CustomerDataModel {
//   int id;
//   String fullName;
//   String profilePicture;
//   LatLng source;
//   LatLng destination;
//   String sourceAddress;
//   String destinationAddress;
//   int numberOfSeats;
//   double totalAmount;

//   CustomerDataModel(
//       {required this.id,
//       required this.fullName,
//       required this.profilePicture,
//       required this.source,
//       required this.destination,
//       required this.sourceAddress,
//       required this.destinationAddress,
//       required this.numberOfSeats,
//       required this.totalAmount});
// }

// class LatLng {
//   double latitude;
//   double longitude;

//   LatLng({required this.latitude, required this.longitude});
// }

import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_data_model.freezed.dart';
part 'customer_data_model.g.dart';

@freezed
class CustomerDataModel with _$CustomerDataModel {
  const factory CustomerDataModel({
    @JsonKey(name: 'customer_id') int? id,
    @JsonKey(name: 'customer_name') String? fullName,
    @JsonKey(name: 'source_address') String? sourceAddress,
    @JsonKey(name: 'destination_address') String? destinationAddress,
    @JsonKey(name: 'customer_profile_picture') String? profilePicture,
    @JsonKey(name: 'source') LatLng? source,
    @JsonKey(name: 'vehicle') VehicleDataModel? vehicle,
    @JsonKey(name: 'destination') LatLng? destination,
    @JsonKey(name: 'number_of_passanger') int? numberOfSeats,
    @JsonKey(name: 'total_amount') double? totalAmount,
  }) = _CustomerDataModel;

  factory CustomerDataModel.fromJson(Map<String, Object?> json) =>
      _$CustomerDataModelFromJson(json);
}

@freezed
class VehicleDataModel with _$VehicleDataModel {
  const factory VehicleDataModel({
    @JsonKey(name: 'vehicle_name') String? vehicleName,
    @JsonKey(name: 'rate') double? rate,
  }) = _VehicleDataModel;

  factory VehicleDataModel.fromJson(Map<String, Object?> json) =>
      _$VehicleDataModelFromJson(json);
}

@freezed
class LatLng with _$LatLng {
  const factory LatLng({
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
  }) = _LatLng;

  factory LatLng.fromJson(Map<String, Object?> json) => _$LatLngFromJson(json);
}
