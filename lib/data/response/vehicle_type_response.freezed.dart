// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleTypeModel _$VehicleTypeModelFromJson(Map<String, dynamic> json) {
  return _VehicleTypeModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleTypeModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  double? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleTypeModelCopyWith<VehicleTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeModelCopyWith<$Res> {
  factory $VehicleTypeModelCopyWith(
          VehicleTypeModel value, $Res Function(VehicleTypeModel) then) =
      _$VehicleTypeModelCopyWithImpl<$Res, VehicleTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'rate') double? rate});
}

/// @nodoc
class _$VehicleTypeModelCopyWithImpl<$Res, $Val extends VehicleTypeModel>
    implements $VehicleTypeModelCopyWith<$Res> {
  _$VehicleTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vehicleName = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_VehicleTypeModelCopyWith<$Res>
    implements $VehicleTypeModelCopyWith<$Res> {
  factory _$$_VehicleTypeModelCopyWith(
          _$_VehicleTypeModel value, $Res Function(_$_VehicleTypeModel) then) =
      __$$_VehicleTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'rate') double? rate});
}

/// @nodoc
class __$$_VehicleTypeModelCopyWithImpl<$Res>
    extends _$VehicleTypeModelCopyWithImpl<$Res, _$_VehicleTypeModel>
    implements _$$_VehicleTypeModelCopyWith<$Res> {
  __$$_VehicleTypeModelCopyWithImpl(
      _$_VehicleTypeModel _value, $Res Function(_$_VehicleTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vehicleName = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$_VehicleTypeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_VehicleTypeModel implements _VehicleTypeModel {
  const _$_VehicleTypeModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'vehicle_name') this.vehicleName,
      @JsonKey(name: 'rate') this.rate});

  factory _$_VehicleTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleTypeModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'vehicle_name')
  final String? vehicleName;
  @override
  @JsonKey(name: 'rate')
  final double? rate;

  @override
  String toString() {
    return 'VehicleTypeModel(id: $id, vehicleName: $vehicleName, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicleName, vehicleName) ||
                other.vehicleName == vehicleName) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, vehicleName, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleTypeModelCopyWith<_$_VehicleTypeModel> get copyWith =>
      __$$_VehicleTypeModelCopyWithImpl<_$_VehicleTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleTypeModelToJson(
      this,
    );
  }
}

abstract class _VehicleTypeModel implements VehicleTypeModel {
  const factory _VehicleTypeModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'vehicle_name') final String? vehicleName,
      @JsonKey(name: 'rate') final double? rate}) = _$_VehicleTypeModel;

  factory _VehicleTypeModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleTypeModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName;
  @override
  @JsonKey(name: 'rate')
  double? get rate;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleTypeModelCopyWith<_$_VehicleTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
