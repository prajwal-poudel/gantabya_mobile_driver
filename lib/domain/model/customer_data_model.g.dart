// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDataModel _$$_CustomerDataModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerDataModel(
      id: json['customer_id'] as int?,
      fullName: json['customer_name'] as String?,
      sourceAddress: json['source_address'] as String?,
      destinationAddress: json['destination_address'] as String?,
      profilePicture: json['customer_profile_picture'] as String?,
      source: json['source'] == null
          ? null
          : LatLng.fromJson(json['source'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : VehicleDataModel.fromJson(json['vehicle'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : LatLng.fromJson(json['destination'] as Map<String, dynamic>),
      numberOfSeats: json['number_of_passanger'] as int?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CustomerDataModelToJson(
        _$_CustomerDataModel instance) =>
    <String, dynamic>{
      'customer_id': instance.id,
      'customer_name': instance.fullName,
      'source_address': instance.sourceAddress,
      'destination_address': instance.destinationAddress,
      'customer_profile_picture': instance.profilePicture,
      'source': instance.source,
      'vehicle': instance.vehicle,
      'destination': instance.destination,
      'number_of_passanger': instance.numberOfSeats,
      'total_amount': instance.totalAmount,
    };

_$_VehicleDataModel _$$_VehicleDataModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleDataModel(
      vehicleName: json['vehicle_name'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_VehicleDataModelToJson(_$_VehicleDataModel instance) =>
    <String, dynamic>{
      'vehicle_name': instance.vehicleName,
      'rate': instance.rate,
    };

_$_LatLng _$$_LatLngFromJson(Map<String, dynamic> json) => _$_LatLng(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LatLngToJson(_$_LatLng instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
