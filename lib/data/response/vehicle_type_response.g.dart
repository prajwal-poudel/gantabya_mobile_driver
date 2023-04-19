// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleTypeModel _$$_VehicleTypeModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleTypeModel(
      id: json['id'] as int?,
      vehicleName: json['vehicle_name'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_VehicleTypeModelToJson(_$_VehicleTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_name': instance.vehicleName,
      'rate': instance.rate,
    };
