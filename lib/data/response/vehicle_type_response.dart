import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_type_response.freezed.dart';
part 'vehicle_type_response.g.dart';

@freezed
class VehicleTypeModel with _$VehicleTypeModel {
  const factory VehicleTypeModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'vehicle_name') String? vehicleName,
    @JsonKey(name: 'rate') double? rate,
  }) = _VehicleTypeModel;

  factory VehicleTypeModel.fromJson(Map<String, Object?> json) =>
      _$VehicleTypeModelFromJson(json);
}
