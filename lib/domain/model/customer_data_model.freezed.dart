// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDataModel _$CustomerDataModelFromJson(Map<String, dynamic> json) {
  return _CustomerDataModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerDataModel {
  @JsonKey(name: 'customer_id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_address')
  String? get sourceAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_address')
  String? get destinationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  LatLng? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle')
  VehicleDataModel? get vehicle => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination')
  LatLng? get destination => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_passanger')
  int? get numberOfSeats => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double? get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDataModelCopyWith<CustomerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDataModelCopyWith<$Res> {
  factory $CustomerDataModelCopyWith(
          CustomerDataModel value, $Res Function(CustomerDataModel) then) =
      _$CustomerDataModelCopyWithImpl<$Res, CustomerDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') int? id,
      @JsonKey(name: 'customer_name') String? fullName,
      @JsonKey(name: 'source_address') String? sourceAddress,
      @JsonKey(name: 'destination_address') String? destinationAddress,
      @JsonKey(name: 'customer_profile_picture') String? profilePicture,
      @JsonKey(name: 'source') LatLng? source,
      @JsonKey(name: 'vehicle') VehicleDataModel? vehicle,
      @JsonKey(name: 'destination') LatLng? destination,
      @JsonKey(name: 'number_of_passanger') int? numberOfSeats,
      @JsonKey(name: 'total_amount') double? totalAmount});

  $LatLngCopyWith<$Res>? get source;
  $VehicleDataModelCopyWith<$Res>? get vehicle;
  $LatLngCopyWith<$Res>? get destination;
}

/// @nodoc
class _$CustomerDataModelCopyWithImpl<$Res, $Val extends CustomerDataModel>
    implements $CustomerDataModelCopyWith<$Res> {
  _$CustomerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? sourceAddress = freezed,
    Object? destinationAddress = freezed,
    Object? profilePicture = freezed,
    Object? source = freezed,
    Object? vehicle = freezed,
    Object? destination = freezed,
    Object? numberOfSeats = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceAddress: freezed == sourceAddress
          ? _value.sourceAddress
          : sourceAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAddress: freezed == destinationAddress
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleDataModel?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      numberOfSeats: freezed == numberOfSeats
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleDataModelCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleDataModelCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res>? get destination {
    if (_value.destination == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.destination!, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerDataModelCopyWith<$Res>
    implements $CustomerDataModelCopyWith<$Res> {
  factory _$$_CustomerDataModelCopyWith(_$_CustomerDataModel value,
          $Res Function(_$_CustomerDataModel) then) =
      __$$_CustomerDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') int? id,
      @JsonKey(name: 'customer_name') String? fullName,
      @JsonKey(name: 'source_address') String? sourceAddress,
      @JsonKey(name: 'destination_address') String? destinationAddress,
      @JsonKey(name: 'customer_profile_picture') String? profilePicture,
      @JsonKey(name: 'source') LatLng? source,
      @JsonKey(name: 'vehicle') VehicleDataModel? vehicle,
      @JsonKey(name: 'destination') LatLng? destination,
      @JsonKey(name: 'number_of_passanger') int? numberOfSeats,
      @JsonKey(name: 'total_amount') double? totalAmount});

  @override
  $LatLngCopyWith<$Res>? get source;
  @override
  $VehicleDataModelCopyWith<$Res>? get vehicle;
  @override
  $LatLngCopyWith<$Res>? get destination;
}

/// @nodoc
class __$$_CustomerDataModelCopyWithImpl<$Res>
    extends _$CustomerDataModelCopyWithImpl<$Res, _$_CustomerDataModel>
    implements _$$_CustomerDataModelCopyWith<$Res> {
  __$$_CustomerDataModelCopyWithImpl(
      _$_CustomerDataModel _value, $Res Function(_$_CustomerDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? sourceAddress = freezed,
    Object? destinationAddress = freezed,
    Object? profilePicture = freezed,
    Object? source = freezed,
    Object? vehicle = freezed,
    Object? destination = freezed,
    Object? numberOfSeats = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_$_CustomerDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceAddress: freezed == sourceAddress
          ? _value.sourceAddress
          : sourceAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAddress: freezed == destinationAddress
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleDataModel?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      numberOfSeats: freezed == numberOfSeats
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerDataModel implements _CustomerDataModel {
  const _$_CustomerDataModel(
      {@JsonKey(name: 'customer_id') this.id,
      @JsonKey(name: 'customer_name') this.fullName,
      @JsonKey(name: 'source_address') this.sourceAddress,
      @JsonKey(name: 'destination_address') this.destinationAddress,
      @JsonKey(name: 'customer_profile_picture') this.profilePicture,
      @JsonKey(name: 'source') this.source,
      @JsonKey(name: 'vehicle') this.vehicle,
      @JsonKey(name: 'destination') this.destination,
      @JsonKey(name: 'number_of_passanger') this.numberOfSeats,
      @JsonKey(name: 'total_amount') this.totalAmount});

  factory _$_CustomerDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDataModelFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final int? id;
  @override
  @JsonKey(name: 'customer_name')
  final String? fullName;
  @override
  @JsonKey(name: 'source_address')
  final String? sourceAddress;
  @override
  @JsonKey(name: 'destination_address')
  final String? destinationAddress;
  @override
  @JsonKey(name: 'customer_profile_picture')
  final String? profilePicture;
  @override
  @JsonKey(name: 'source')
  final LatLng? source;
  @override
  @JsonKey(name: 'vehicle')
  final VehicleDataModel? vehicle;
  @override
  @JsonKey(name: 'destination')
  final LatLng? destination;
  @override
  @JsonKey(name: 'number_of_passanger')
  final int? numberOfSeats;
  @override
  @JsonKey(name: 'total_amount')
  final double? totalAmount;

  @override
  String toString() {
    return 'CustomerDataModel(id: $id, fullName: $fullName, sourceAddress: $sourceAddress, destinationAddress: $destinationAddress, profilePicture: $profilePicture, source: $source, vehicle: $vehicle, destination: $destination, numberOfSeats: $numberOfSeats, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.sourceAddress, sourceAddress) ||
                other.sourceAddress == sourceAddress) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.numberOfSeats, numberOfSeats) ||
                other.numberOfSeats == numberOfSeats) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      sourceAddress,
      destinationAddress,
      profilePicture,
      source,
      vehicle,
      destination,
      numberOfSeats,
      totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDataModelCopyWith<_$_CustomerDataModel> get copyWith =>
      __$$_CustomerDataModelCopyWithImpl<_$_CustomerDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDataModelToJson(
      this,
    );
  }
}

abstract class _CustomerDataModel implements CustomerDataModel {
  const factory _CustomerDataModel(
      {@JsonKey(name: 'customer_id')
          final int? id,
      @JsonKey(name: 'customer_name')
          final String? fullName,
      @JsonKey(name: 'source_address')
          final String? sourceAddress,
      @JsonKey(name: 'destination_address')
          final String? destinationAddress,
      @JsonKey(name: 'customer_profile_picture')
          final String? profilePicture,
      @JsonKey(name: 'source')
          final LatLng? source,
      @JsonKey(name: 'vehicle')
          final VehicleDataModel? vehicle,
      @JsonKey(name: 'destination')
          final LatLng? destination,
      @JsonKey(name: 'number_of_passanger')
          final int? numberOfSeats,
      @JsonKey(name: 'total_amount')
          final double? totalAmount}) = _$_CustomerDataModel;

  factory _CustomerDataModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerDataModel.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  int? get id;
  @override
  @JsonKey(name: 'customer_name')
  String? get fullName;
  @override
  @JsonKey(name: 'source_address')
  String? get sourceAddress;
  @override
  @JsonKey(name: 'destination_address')
  String? get destinationAddress;
  @override
  @JsonKey(name: 'customer_profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(name: 'source')
  LatLng? get source;
  @override
  @JsonKey(name: 'vehicle')
  VehicleDataModel? get vehicle;
  @override
  @JsonKey(name: 'destination')
  LatLng? get destination;
  @override
  @JsonKey(name: 'number_of_passanger')
  int? get numberOfSeats;
  @override
  @JsonKey(name: 'total_amount')
  double? get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDataModelCopyWith<_$_CustomerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleDataModel _$VehicleDataModelFromJson(Map<String, dynamic> json) {
  return _VehicleDataModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleDataModel {
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  double? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleDataModelCopyWith<VehicleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDataModelCopyWith<$Res> {
  factory $VehicleDataModelCopyWith(
          VehicleDataModel value, $Res Function(VehicleDataModel) then) =
      _$VehicleDataModelCopyWithImpl<$Res, VehicleDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'rate') double? rate});
}

/// @nodoc
class _$VehicleDataModelCopyWithImpl<$Res, $Val extends VehicleDataModel>
    implements $VehicleDataModelCopyWith<$Res> {
  _$VehicleDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleName = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleName: freezed == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleDataModelCopyWith<$Res>
    implements $VehicleDataModelCopyWith<$Res> {
  factory _$$_VehicleDataModelCopyWith(
          _$_VehicleDataModel value, $Res Function(_$_VehicleDataModel) then) =
      __$$_VehicleDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'rate') double? rate});
}

/// @nodoc
class __$$_VehicleDataModelCopyWithImpl<$Res>
    extends _$VehicleDataModelCopyWithImpl<$Res, _$_VehicleDataModel>
    implements _$$_VehicleDataModelCopyWith<$Res> {
  __$$_VehicleDataModelCopyWithImpl(
      _$_VehicleDataModel _value, $Res Function(_$_VehicleDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleName = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$_VehicleDataModel(
      vehicleName: freezed == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleDataModel implements _VehicleDataModel {
  const _$_VehicleDataModel(
      {@JsonKey(name: 'vehicle_name') this.vehicleName,
      @JsonKey(name: 'rate') this.rate});

  factory _$_VehicleDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleDataModelFromJson(json);

  @override
  @JsonKey(name: 'vehicle_name')
  final String? vehicleName;
  @override
  @JsonKey(name: 'rate')
  final double? rate;

  @override
  String toString() {
    return 'VehicleDataModel(vehicleName: $vehicleName, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleDataModel &&
            (identical(other.vehicleName, vehicleName) ||
                other.vehicleName == vehicleName) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vehicleName, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleDataModelCopyWith<_$_VehicleDataModel> get copyWith =>
      __$$_VehicleDataModelCopyWithImpl<_$_VehicleDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleDataModelToJson(
      this,
    );
  }
}

abstract class _VehicleDataModel implements VehicleDataModel {
  const factory _VehicleDataModel(
      {@JsonKey(name: 'vehicle_name') final String? vehicleName,
      @JsonKey(name: 'rate') final double? rate}) = _$_VehicleDataModel;

  factory _VehicleDataModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleDataModel.fromJson;

  @override
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName;
  @override
  @JsonKey(name: 'rate')
  double? get rate;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleDataModelCopyWith<_$_VehicleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LatLng _$LatLngFromJson(Map<String, dynamic> json) {
  return _LatLng.fromJson(json);
}

/// @nodoc
mixin _$LatLng {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngCopyWith<LatLng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngCopyWith<$Res> {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) then) =
      _$LatLngCopyWithImpl<$Res, LatLng>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$LatLngCopyWithImpl<$Res, $Val extends LatLng>
    implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$$_LatLngCopyWith(_$_LatLng value, $Res Function(_$_LatLng) then) =
      __$$_LatLngCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$$_LatLngCopyWithImpl<$Res>
    extends _$LatLngCopyWithImpl<$Res, _$_LatLng>
    implements _$$_LatLngCopyWith<$Res> {
  __$$_LatLngCopyWithImpl(_$_LatLng _value, $Res Function(_$_LatLng) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LatLng(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatLng implements _LatLng {
  const _$_LatLng(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$_LatLng.fromJson(Map<String, dynamic> json) =>
      _$$_LatLngFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString() {
    return 'LatLng(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLng &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatLngCopyWith<_$_LatLng> get copyWith =>
      __$$_LatLngCopyWithImpl<_$_LatLng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLngToJson(
      this,
    );
  }
}

abstract class _LatLng implements LatLng {
  const factory _LatLng(
      {@JsonKey(name: 'latitude') final double? latitude,
      @JsonKey(name: 'longitude') final double? longitude}) = _$_LatLng;

  factory _LatLng.fromJson(Map<String, dynamic> json) = _$_LatLng.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LatLngCopyWith<_$_LatLng> get copyWith =>
      throw _privateConstructorUsedError;
}
