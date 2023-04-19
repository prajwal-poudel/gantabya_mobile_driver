// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_role')
  String? get userRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'drivers')
  DriverDataModel? get driverData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'user_role') String? userRole,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'drivers') DriverDataModel? driverData});

  $DriverDataModelCopyWith<$Res>? get driverData;
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? userRole = freezed,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? driverData = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      driverData: freezed == driverData
          ? _value.driverData
          : driverData // ignore: cast_nullable_to_non_nullable
              as DriverDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverDataModelCopyWith<$Res>? get driverData {
    if (_value.driverData == null) {
      return null;
    }

    return $DriverDataModelCopyWith<$Res>(_value.driverData!, (value) {
      return _then(_value.copyWith(driverData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$_UserDataModelCopyWith(
          _$_UserDataModel value, $Res Function(_$_UserDataModel) then) =
      __$$_UserDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'user_role') String? userRole,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'drivers') DriverDataModel? driverData});

  @override
  $DriverDataModelCopyWith<$Res>? get driverData;
}

/// @nodoc
class __$$_UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$_UserDataModel>
    implements _$$_UserDataModelCopyWith<$Res> {
  __$$_UserDataModelCopyWithImpl(
      _$_UserDataModel _value, $Res Function(_$_UserDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? userRole = freezed,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? driverData = freezed,
  }) {
    return _then(_$_UserDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      driverData: freezed == driverData
          ? _value.driverData
          : driverData // ignore: cast_nullable_to_non_nullable
              as DriverDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataModel implements _UserDataModel {
  const _$_UserDataModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'user_role') this.userRole,
      @JsonKey(name: 'profile_picture') this.profilePicture,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'drivers') this.driverData});

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'user_role')
  final String? userRole;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'drivers')
  final DriverDataModel? driverData;

  @override
  String toString() {
    return 'UserDataModel(id: $id, fullName: $fullName, email: $email, userRole: $userRole, profilePicture: $profilePicture, phoneNumber: $phoneNumber, gender: $gender, driverData: $driverData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.driverData, driverData) ||
                other.driverData == driverData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, userRole,
      profilePicture, phoneNumber, gender, driverData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      __$$_UserDataModelCopyWithImpl<_$_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataModelToJson(
      this,
    );
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'full_name') final String? fullName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'user_role') final String? userRole,
          @JsonKey(name: 'profile_picture') final String? profilePicture,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'gender') final String? gender,
          @JsonKey(name: 'drivers') final DriverDataModel? driverData}) =
      _$_UserDataModel;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'user_role')
  String? get userRole;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'drivers')
  DriverDataModel? get driverData;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverDataModel _$DriverDataModelFromJson(Map<String, dynamic> json) {
  return _DriverDataModel.fromJson(json);
}

/// @nodoc
mixin _$DriverDataModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified')
  dynamic get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings')
  double? get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallets')
  WalletDataModel? get wallet => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_details')
  VehicleDataModel? get vehicleInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverDataModelCopyWith<DriverDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDataModelCopyWith<$Res> {
  factory $DriverDataModelCopyWith(
          DriverDataModel value, $Res Function(DriverDataModel) then) =
      _$DriverDataModelCopyWithImpl<$Res, DriverDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'verified') dynamic verified,
      @JsonKey(name: 'ratings') double? ratings,
      @JsonKey(name: 'wallets') WalletDataModel? wallet,
      @JsonKey(name: 'vehicle_details') VehicleDataModel? vehicleInfo});

  $WalletDataModelCopyWith<$Res>? get wallet;
  $VehicleDataModelCopyWith<$Res>? get vehicleInfo;
}

/// @nodoc
class _$DriverDataModelCopyWithImpl<$Res, $Val extends DriverDataModel>
    implements $DriverDataModelCopyWith<$Res> {
  _$DriverDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verified = freezed,
    Object? ratings = freezed,
    Object? wallet = freezed,
    Object? vehicleInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletDataModel?,
      vehicleInfo: freezed == vehicleInfo
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletDataModelCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletDataModelCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleDataModelCopyWith<$Res>? get vehicleInfo {
    if (_value.vehicleInfo == null) {
      return null;
    }

    return $VehicleDataModelCopyWith<$Res>(_value.vehicleInfo!, (value) {
      return _then(_value.copyWith(vehicleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverDataModelCopyWith<$Res>
    implements $DriverDataModelCopyWith<$Res> {
  factory _$$_DriverDataModelCopyWith(
          _$_DriverDataModel value, $Res Function(_$_DriverDataModel) then) =
      __$$_DriverDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'verified') dynamic verified,
      @JsonKey(name: 'ratings') double? ratings,
      @JsonKey(name: 'wallets') WalletDataModel? wallet,
      @JsonKey(name: 'vehicle_details') VehicleDataModel? vehicleInfo});

  @override
  $WalletDataModelCopyWith<$Res>? get wallet;
  @override
  $VehicleDataModelCopyWith<$Res>? get vehicleInfo;
}

/// @nodoc
class __$$_DriverDataModelCopyWithImpl<$Res>
    extends _$DriverDataModelCopyWithImpl<$Res, _$_DriverDataModel>
    implements _$$_DriverDataModelCopyWith<$Res> {
  __$$_DriverDataModelCopyWithImpl(
      _$_DriverDataModel _value, $Res Function(_$_DriverDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verified = freezed,
    Object? ratings = freezed,
    Object? wallet = freezed,
    Object? vehicleInfo = freezed,
  }) {
    return _then(_$_DriverDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as double?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletDataModel?,
      vehicleInfo: freezed == vehicleInfo
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverDataModel implements _DriverDataModel {
  const _$_DriverDataModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'verified') this.verified,
      @JsonKey(name: 'ratings') this.ratings,
      @JsonKey(name: 'wallets') this.wallet,
      @JsonKey(name: 'vehicle_details') this.vehicleInfo});

  factory _$_DriverDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DriverDataModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'verified')
  final dynamic verified;
  @override
  @JsonKey(name: 'ratings')
  final double? ratings;
  @override
  @JsonKey(name: 'wallets')
  final WalletDataModel? wallet;
  @override
  @JsonKey(name: 'vehicle_details')
  final VehicleDataModel? vehicleInfo;

  @override
  String toString() {
    return 'DriverDataModel(id: $id, verified: $verified, ratings: $ratings, wallet: $wallet, vehicleInfo: $vehicleInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverDataModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.verified, verified) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.vehicleInfo, vehicleInfo) ||
                other.vehicleInfo == vehicleInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(verified),
      ratings,
      wallet,
      vehicleInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverDataModelCopyWith<_$_DriverDataModel> get copyWith =>
      __$$_DriverDataModelCopyWithImpl<_$_DriverDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverDataModelToJson(
      this,
    );
  }
}

abstract class _DriverDataModel implements DriverDataModel {
  const factory _DriverDataModel(
      {@JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'verified')
          final dynamic verified,
      @JsonKey(name: 'ratings')
          final double? ratings,
      @JsonKey(name: 'wallets')
          final WalletDataModel? wallet,
      @JsonKey(name: 'vehicle_details')
          final VehicleDataModel? vehicleInfo}) = _$_DriverDataModel;

  factory _DriverDataModel.fromJson(Map<String, dynamic> json) =
      _$_DriverDataModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'verified')
  dynamic get verified;
  @override
  @JsonKey(name: 'ratings')
  double? get ratings;
  @override
  @JsonKey(name: 'wallets')
  WalletDataModel? get wallet;
  @override
  @JsonKey(name: 'vehicle_details')
  VehicleDataModel? get vehicleInfo;
  @override
  @JsonKey(ignore: true)
  _$$_DriverDataModelCopyWith<_$_DriverDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletDataModel _$WalletDataModelFromJson(Map<String, dynamic> json) {
  return _WalletDataModel.fromJson(json);
}

/// @nodoc
mixin _$WalletDataModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_balance')
  double? get currentBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'freezed_balance')
  double? get freezedBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_balance')
  double? get actualBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDataModelCopyWith<WalletDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDataModelCopyWith<$Res> {
  factory $WalletDataModelCopyWith(
          WalletDataModel value, $Res Function(WalletDataModel) then) =
      _$WalletDataModelCopyWithImpl<$Res, WalletDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'current_balance') double? currentBalance,
      @JsonKey(name: 'freezed_balance') double? freezedBalance,
      @JsonKey(name: 'actual_balance') double? actualBalance});
}

/// @nodoc
class _$WalletDataModelCopyWithImpl<$Res, $Val extends WalletDataModel>
    implements $WalletDataModelCopyWith<$Res> {
  _$WalletDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? currentBalance = freezed,
    Object? freezedBalance = freezed,
    Object? actualBalance = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBalance: freezed == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      freezedBalance: freezed == freezedBalance
          ? _value.freezedBalance
          : freezedBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      actualBalance: freezed == actualBalance
          ? _value.actualBalance
          : actualBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletDataModelCopyWith<$Res>
    implements $WalletDataModelCopyWith<$Res> {
  factory _$$_WalletDataModelCopyWith(
          _$_WalletDataModel value, $Res Function(_$_WalletDataModel) then) =
      __$$_WalletDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'current_balance') double? currentBalance,
      @JsonKey(name: 'freezed_balance') double? freezedBalance,
      @JsonKey(name: 'actual_balance') double? actualBalance});
}

/// @nodoc
class __$$_WalletDataModelCopyWithImpl<$Res>
    extends _$WalletDataModelCopyWithImpl<$Res, _$_WalletDataModel>
    implements _$$_WalletDataModelCopyWith<$Res> {
  __$$_WalletDataModelCopyWithImpl(
      _$_WalletDataModel _value, $Res Function(_$_WalletDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? currentBalance = freezed,
    Object? freezedBalance = freezed,
    Object? actualBalance = freezed,
  }) {
    return _then(_$_WalletDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBalance: freezed == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      freezedBalance: freezed == freezedBalance
          ? _value.freezedBalance
          : freezedBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      actualBalance: freezed == actualBalance
          ? _value.actualBalance
          : actualBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletDataModel implements _WalletDataModel {
  const _$_WalletDataModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'current_balance') this.currentBalance,
      @JsonKey(name: 'freezed_balance') this.freezedBalance,
      @JsonKey(name: 'actual_balance') this.actualBalance});

  factory _$_WalletDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletDataModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'current_balance')
  final double? currentBalance;
  @override
  @JsonKey(name: 'freezed_balance')
  final double? freezedBalance;
  @override
  @JsonKey(name: 'actual_balance')
  final double? actualBalance;

  @override
  String toString() {
    return 'WalletDataModel(id: $id, currentBalance: $currentBalance, freezedBalance: $freezedBalance, actualBalance: $actualBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.freezedBalance, freezedBalance) ||
                other.freezedBalance == freezedBalance) &&
            (identical(other.actualBalance, actualBalance) ||
                other.actualBalance == actualBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, currentBalance, freezedBalance, actualBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletDataModelCopyWith<_$_WalletDataModel> get copyWith =>
      __$$_WalletDataModelCopyWithImpl<_$_WalletDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletDataModelToJson(
      this,
    );
  }
}

abstract class _WalletDataModel implements WalletDataModel {
  const factory _WalletDataModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'current_balance') final double? currentBalance,
          @JsonKey(name: 'freezed_balance') final double? freezedBalance,
          @JsonKey(name: 'actual_balance') final double? actualBalance}) =
      _$_WalletDataModel;

  factory _WalletDataModel.fromJson(Map<String, dynamic> json) =
      _$_WalletDataModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'current_balance')
  double? get currentBalance;
  @override
  @JsonKey(name: 'freezed_balance')
  double? get freezedBalance;
  @override
  @JsonKey(name: 'actual_balance')
  double? get actualBalance;
  @override
  @JsonKey(ignore: true)
  _$$_WalletDataModelCopyWith<_$_WalletDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleDataModel _$VehicleDataModelFromJson(Map<String, dynamic> json) {
  return _VehicleDataModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleDataModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_number')
  String? get vehicleNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'billbook_image')
  String? get billbookImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_image')
  String? get licenseImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'license_number')
  String? get licenseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_types')
  VehicleTypeModel? get vehicleType => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'vehicle_number') String? vehicleNumber,
      @JsonKey(name: 'billbook_image') String? billbookImage,
      @JsonKey(name: 'license_image') String? licenseImage,
      @JsonKey(name: 'license_number') String? licenseNumber,
      @JsonKey(name: 'vehicle_types') VehicleTypeModel? vehicleType});

  $VehicleTypeModelCopyWith<$Res>? get vehicleType;
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
    Object? id = freezed,
    Object? vehicleNumber = freezed,
    Object? billbookImage = freezed,
    Object? licenseImage = freezed,
    Object? licenseNumber = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billbookImage: freezed == billbookImage
          ? _value.billbookImage
          : billbookImage // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseImage: freezed == licenseImage
          ? _value.licenseImage
          : licenseImage // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleTypeModelCopyWith<$Res>? get vehicleType {
    if (_value.vehicleType == null) {
      return null;
    }

    return $VehicleTypeModelCopyWith<$Res>(_value.vehicleType!, (value) {
      return _then(_value.copyWith(vehicleType: value) as $Val);
    });
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
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'vehicle_number') String? vehicleNumber,
      @JsonKey(name: 'billbook_image') String? billbookImage,
      @JsonKey(name: 'license_image') String? licenseImage,
      @JsonKey(name: 'license_number') String? licenseNumber,
      @JsonKey(name: 'vehicle_types') VehicleTypeModel? vehicleType});

  @override
  $VehicleTypeModelCopyWith<$Res>? get vehicleType;
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
    Object? id = freezed,
    Object? vehicleNumber = freezed,
    Object? billbookImage = freezed,
    Object? licenseImage = freezed,
    Object? licenseNumber = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_$_VehicleDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billbookImage: freezed == billbookImage
          ? _value.billbookImage
          : billbookImage // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseImage: freezed == licenseImage
          ? _value.licenseImage
          : licenseImage // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNumber: freezed == licenseNumber
          ? _value.licenseNumber
          : licenseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleDataModel implements _VehicleDataModel {
  const _$_VehicleDataModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'vehicle_number') this.vehicleNumber,
      @JsonKey(name: 'billbook_image') this.billbookImage,
      @JsonKey(name: 'license_image') this.licenseImage,
      @JsonKey(name: 'license_number') this.licenseNumber,
      @JsonKey(name: 'vehicle_types') this.vehicleType});

  factory _$_VehicleDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleDataModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'vehicle_number')
  final String? vehicleNumber;
  @override
  @JsonKey(name: 'billbook_image')
  final String? billbookImage;
  @override
  @JsonKey(name: 'license_image')
  final String? licenseImage;
  @override
  @JsonKey(name: 'license_number')
  final String? licenseNumber;
  @override
  @JsonKey(name: 'vehicle_types')
  final VehicleTypeModel? vehicleType;

  @override
  String toString() {
    return 'VehicleDataModel(id: $id, vehicleNumber: $vehicleNumber, billbookImage: $billbookImage, licenseImage: $licenseImage, licenseNumber: $licenseNumber, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.billbookImage, billbookImage) ||
                other.billbookImage == billbookImage) &&
            (identical(other.licenseImage, licenseImage) ||
                other.licenseImage == licenseImage) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, vehicleNumber, billbookImage,
      licenseImage, licenseNumber, vehicleType);

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
      {@JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'vehicle_number')
          final String? vehicleNumber,
      @JsonKey(name: 'billbook_image')
          final String? billbookImage,
      @JsonKey(name: 'license_image')
          final String? licenseImage,
      @JsonKey(name: 'license_number')
          final String? licenseNumber,
      @JsonKey(name: 'vehicle_types')
          final VehicleTypeModel? vehicleType}) = _$_VehicleDataModel;

  factory _VehicleDataModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleDataModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'vehicle_number')
  String? get vehicleNumber;
  @override
  @JsonKey(name: 'billbook_image')
  String? get billbookImage;
  @override
  @JsonKey(name: 'license_image')
  String? get licenseImage;
  @override
  @JsonKey(name: 'license_number')
  String? get licenseNumber;
  @override
  @JsonKey(name: 'vehicle_types')
  VehicleTypeModel? get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleDataModelCopyWith<_$_VehicleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
