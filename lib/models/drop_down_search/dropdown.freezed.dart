// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaResponse _$AreaResponseFromJson(Map<String, dynamic> json) {
  return _AreaResponse.fromJson(json);
}

/// @nodoc
class _$AreaResponseTearOff {
  const _$AreaResponseTearOff();

  _AreaResponse call(
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<AreaModel> message,
      @JsonKey(name: 'status') String status) {
    return _AreaResponse(
      name,
      returnCode,
      message,
      status,
    );
  }

  AreaResponse fromJson(Map<String, Object?> json) {
    return AreaResponse.fromJson(json);
  }
}

/// @nodoc
const $AreaResponse = _$AreaResponseTearOff();

/// @nodoc
mixin _$AreaResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<AreaModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaResponseCopyWith<AreaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaResponseCopyWith<$Res> {
  factory $AreaResponseCopyWith(
          AreaResponse value, $Res Function(AreaResponse) then) =
      _$AreaResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<AreaModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$AreaResponseCopyWithImpl<$Res> implements $AreaResponseCopyWith<$Res> {
  _$AreaResponseCopyWithImpl(this._value, this._then);

  final AreaResponse _value;
  // ignore: unused_field
  final $Res Function(AreaResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AreaResponseCopyWith<$Res>
    implements $AreaResponseCopyWith<$Res> {
  factory _$AreaResponseCopyWith(
          _AreaResponse value, $Res Function(_AreaResponse) then) =
      __$AreaResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<AreaModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$AreaResponseCopyWithImpl<$Res> extends _$AreaResponseCopyWithImpl<$Res>
    implements _$AreaResponseCopyWith<$Res> {
  __$AreaResponseCopyWithImpl(
      _AreaResponse _value, $Res Function(_AreaResponse) _then)
      : super(_value, (v) => _then(v as _AreaResponse));

  @override
  _AreaResponse get _value => super._value as _AreaResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_AreaResponse(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaResponse implements _AreaResponse {
  _$_AreaResponse(
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'code') this.returnCode,
      @JsonKey(name: 'msg') this.message,
      @JsonKey(name: 'status') this.status);

  factory _$_AreaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AreaResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<AreaModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'AreaResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AreaResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AreaResponseCopyWith<_AreaResponse> get copyWith =>
      __$AreaResponseCopyWithImpl<_AreaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaResponseToJson(this);
  }
}

abstract class _AreaResponse implements AreaResponse {
  factory _AreaResponse(
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<AreaModel> message,
      @JsonKey(name: 'status') String status) = _$_AreaResponse;

  factory _AreaResponse.fromJson(Map<String, dynamic> json) =
      _$_AreaResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<AreaModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$AreaResponseCopyWith<_AreaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) {
  return _AreaModel.fromJson(json);
}

/// @nodoc
class _$AreaModelTearOff {
  const _$AreaModelTearOff();

  _AreaModel call({@JsonKey(name: 'areaName') required String areaName}) {
    return _AreaModel(
      areaName: areaName,
    );
  }

  AreaModel fromJson(Map<String, Object?> json) {
    return AreaModel.fromJson(json);
  }
}

/// @nodoc
const $AreaModel = _$AreaModelTearOff();

/// @nodoc
mixin _$AreaModel {
  @JsonKey(name: 'areaName')
  String get areaName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaModelCopyWith<AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaModelCopyWith<$Res> {
  factory $AreaModelCopyWith(AreaModel value, $Res Function(AreaModel) then) =
      _$AreaModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'areaName') String areaName});
}

/// @nodoc
class _$AreaModelCopyWithImpl<$Res> implements $AreaModelCopyWith<$Res> {
  _$AreaModelCopyWithImpl(this._value, this._then);

  final AreaModel _value;
  // ignore: unused_field
  final $Res Function(AreaModel) _then;

  @override
  $Res call({
    Object? areaName = freezed,
  }) {
    return _then(_value.copyWith(
      areaName: areaName == freezed
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AreaModelCopyWith<$Res> implements $AreaModelCopyWith<$Res> {
  factory _$AreaModelCopyWith(
          _AreaModel value, $Res Function(_AreaModel) then) =
      __$AreaModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'areaName') String areaName});
}

/// @nodoc
class __$AreaModelCopyWithImpl<$Res> extends _$AreaModelCopyWithImpl<$Res>
    implements _$AreaModelCopyWith<$Res> {
  __$AreaModelCopyWithImpl(_AreaModel _value, $Res Function(_AreaModel) _then)
      : super(_value, (v) => _then(v as _AreaModel));

  @override
  _AreaModel get _value => super._value as _AreaModel;

  @override
  $Res call({
    Object? areaName = freezed,
  }) {
    return _then(_AreaModel(
      areaName: areaName == freezed
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaModel implements _AreaModel {
  _$_AreaModel({@JsonKey(name: 'areaName') required this.areaName});

  factory _$_AreaModel.fromJson(Map<String, dynamic> json) =>
      _$$_AreaModelFromJson(json);

  @override
  @JsonKey(name: 'areaName')
  final String areaName;

  @override
  String toString() {
    return 'AreaModel(areaName: $areaName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AreaModel &&
            const DeepCollectionEquality().equals(other.areaName, areaName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(areaName));

  @JsonKey(ignore: true)
  @override
  _$AreaModelCopyWith<_AreaModel> get copyWith =>
      __$AreaModelCopyWithImpl<_AreaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaModelToJson(this);
  }
}

abstract class _AreaModel implements AreaModel {
  factory _AreaModel({@JsonKey(name: 'areaName') required String areaName}) =
      _$_AreaModel;

  factory _AreaModel.fromJson(Map<String, dynamic> json) =
      _$_AreaModel.fromJson;

  @override
  @JsonKey(name: 'areaName')
  String get areaName;
  @override
  @JsonKey(ignore: true)
  _$AreaModelCopyWith<_AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchNumberRequest _$BatchNumberRequestFromJson(Map<String, dynamic> json) {
  return _BatchNumberRequest.fromJson(json);
}

/// @nodoc
class _$BatchNumberRequestTearOff {
  const _$BatchNumberRequestTearOff();

  _BatchNumberRequest call(
      {@JsonKey(name: 'prod_code') required String productCode}) {
    return _BatchNumberRequest(
      productCode: productCode,
    );
  }

  BatchNumberRequest fromJson(Map<String, Object?> json) {
    return BatchNumberRequest.fromJson(json);
  }
}

/// @nodoc
const $BatchNumberRequest = _$BatchNumberRequestTearOff();

/// @nodoc
mixin _$BatchNumberRequest {
  @JsonKey(name: 'prod_code')
  String get productCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatchNumberRequestCopyWith<BatchNumberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchNumberRequestCopyWith<$Res> {
  factory $BatchNumberRequestCopyWith(
          BatchNumberRequest value, $Res Function(BatchNumberRequest) then) =
      _$BatchNumberRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'prod_code') String productCode});
}

/// @nodoc
class _$BatchNumberRequestCopyWithImpl<$Res>
    implements $BatchNumberRequestCopyWith<$Res> {
  _$BatchNumberRequestCopyWithImpl(this._value, this._then);

  final BatchNumberRequest _value;
  // ignore: unused_field
  final $Res Function(BatchNumberRequest) _then;

  @override
  $Res call({
    Object? productCode = freezed,
  }) {
    return _then(_value.copyWith(
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BatchNumberRequestCopyWith<$Res>
    implements $BatchNumberRequestCopyWith<$Res> {
  factory _$BatchNumberRequestCopyWith(
          _BatchNumberRequest value, $Res Function(_BatchNumberRequest) then) =
      __$BatchNumberRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'prod_code') String productCode});
}

/// @nodoc
class __$BatchNumberRequestCopyWithImpl<$Res>
    extends _$BatchNumberRequestCopyWithImpl<$Res>
    implements _$BatchNumberRequestCopyWith<$Res> {
  __$BatchNumberRequestCopyWithImpl(
      _BatchNumberRequest _value, $Res Function(_BatchNumberRequest) _then)
      : super(_value, (v) => _then(v as _BatchNumberRequest));

  @override
  _BatchNumberRequest get _value => super._value as _BatchNumberRequest;

  @override
  $Res call({
    Object? productCode = freezed,
  }) {
    return _then(_BatchNumberRequest(
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BatchNumberRequest implements _BatchNumberRequest {
  _$_BatchNumberRequest(
      {@JsonKey(name: 'prod_code') required this.productCode});

  factory _$_BatchNumberRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BatchNumberRequestFromJson(json);

  @override
  @JsonKey(name: 'prod_code')
  final String productCode;

  @override
  String toString() {
    return 'BatchNumberRequest(productCode: $productCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatchNumberRequest &&
            const DeepCollectionEquality()
                .equals(other.productCode, productCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productCode));

  @JsonKey(ignore: true)
  @override
  _$BatchNumberRequestCopyWith<_BatchNumberRequest> get copyWith =>
      __$BatchNumberRequestCopyWithImpl<_BatchNumberRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BatchNumberRequestToJson(this);
  }
}

abstract class _BatchNumberRequest implements BatchNumberRequest {
  factory _BatchNumberRequest(
          {@JsonKey(name: 'prod_code') required String productCode}) =
      _$_BatchNumberRequest;

  factory _BatchNumberRequest.fromJson(Map<String, dynamic> json) =
      _$_BatchNumberRequest.fromJson;

  @override
  @JsonKey(name: 'prod_code')
  String get productCode;
  @override
  @JsonKey(ignore: true)
  _$BatchNumberRequestCopyWith<_BatchNumberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchNumberResponse _$BatchNumberResponseFromJson(Map<String, dynamic> json) {
  return _BatchNumberResponse.fromJson(json);
}

/// @nodoc
class _$BatchNumberResponseTearOff {
  const _$BatchNumberResponseTearOff();

  _BatchNumberResponse call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<BatchNumberModel> message,
      @JsonKey(name: 'status') required String status}) {
    return _BatchNumberResponse(
      name: name,
      returnCode: returnCode,
      message: message,
      status: status,
    );
  }

  BatchNumberResponse fromJson(Map<String, Object?> json) {
    return BatchNumberResponse.fromJson(json);
  }
}

/// @nodoc
const $BatchNumberResponse = _$BatchNumberResponseTearOff();

/// @nodoc
mixin _$BatchNumberResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<BatchNumberModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatchNumberResponseCopyWith<BatchNumberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchNumberResponseCopyWith<$Res> {
  factory $BatchNumberResponseCopyWith(
          BatchNumberResponse value, $Res Function(BatchNumberResponse) then) =
      _$BatchNumberResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<BatchNumberModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$BatchNumberResponseCopyWithImpl<$Res>
    implements $BatchNumberResponseCopyWith<$Res> {
  _$BatchNumberResponseCopyWithImpl(this._value, this._then);

  final BatchNumberResponse _value;
  // ignore: unused_field
  final $Res Function(BatchNumberResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<BatchNumberModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BatchNumberResponseCopyWith<$Res>
    implements $BatchNumberResponseCopyWith<$Res> {
  factory _$BatchNumberResponseCopyWith(_BatchNumberResponse value,
          $Res Function(_BatchNumberResponse) then) =
      __$BatchNumberResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<BatchNumberModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$BatchNumberResponseCopyWithImpl<$Res>
    extends _$BatchNumberResponseCopyWithImpl<$Res>
    implements _$BatchNumberResponseCopyWith<$Res> {
  __$BatchNumberResponseCopyWithImpl(
      _BatchNumberResponse _value, $Res Function(_BatchNumberResponse) _then)
      : super(_value, (v) => _then(v as _BatchNumberResponse));

  @override
  _BatchNumberResponse get _value => super._value as _BatchNumberResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_BatchNumberResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<BatchNumberModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BatchNumberResponse implements _BatchNumberResponse {
  _$_BatchNumberResponse(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.returnCode,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_BatchNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BatchNumberResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<BatchNumberModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'BatchNumberResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatchNumberResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$BatchNumberResponseCopyWith<_BatchNumberResponse> get copyWith =>
      __$BatchNumberResponseCopyWithImpl<_BatchNumberResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BatchNumberResponseToJson(this);
  }
}

abstract class _BatchNumberResponse implements BatchNumberResponse {
  factory _BatchNumberResponse(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'code') required String returnCode,
          @JsonKey(name: 'msg') required List<BatchNumberModel> message,
          @JsonKey(name: 'status') required String status}) =
      _$_BatchNumberResponse;

  factory _BatchNumberResponse.fromJson(Map<String, dynamic> json) =
      _$_BatchNumberResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<BatchNumberModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$BatchNumberResponseCopyWith<_BatchNumberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchNumberModel _$BatchNumberModelFromJson(Map<String, dynamic> json) {
  return _BatchNumberModel.fromJson(json);
}

/// @nodoc
class _$BatchNumberModelTearOff {
  const _$BatchNumberModelTearOff();

  _BatchNumberModel call(
      {@JsonKey(name: 'batch_no') required String batchNumber}) {
    return _BatchNumberModel(
      batchNumber: batchNumber,
    );
  }

  BatchNumberModel fromJson(Map<String, Object?> json) {
    return BatchNumberModel.fromJson(json);
  }
}

/// @nodoc
const $BatchNumberModel = _$BatchNumberModelTearOff();

/// @nodoc
mixin _$BatchNumberModel {
  @JsonKey(name: 'batch_no')
  String get batchNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatchNumberModelCopyWith<BatchNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchNumberModelCopyWith<$Res> {
  factory $BatchNumberModelCopyWith(
          BatchNumberModel value, $Res Function(BatchNumberModel) then) =
      _$BatchNumberModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'batch_no') String batchNumber});
}

/// @nodoc
class _$BatchNumberModelCopyWithImpl<$Res>
    implements $BatchNumberModelCopyWith<$Res> {
  _$BatchNumberModelCopyWithImpl(this._value, this._then);

  final BatchNumberModel _value;
  // ignore: unused_field
  final $Res Function(BatchNumberModel) _then;

  @override
  $Res call({
    Object? batchNumber = freezed,
  }) {
    return _then(_value.copyWith(
      batchNumber: batchNumber == freezed
          ? _value.batchNumber
          : batchNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BatchNumberModelCopyWith<$Res>
    implements $BatchNumberModelCopyWith<$Res> {
  factory _$BatchNumberModelCopyWith(
          _BatchNumberModel value, $Res Function(_BatchNumberModel) then) =
      __$BatchNumberModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'batch_no') String batchNumber});
}

/// @nodoc
class __$BatchNumberModelCopyWithImpl<$Res>
    extends _$BatchNumberModelCopyWithImpl<$Res>
    implements _$BatchNumberModelCopyWith<$Res> {
  __$BatchNumberModelCopyWithImpl(
      _BatchNumberModel _value, $Res Function(_BatchNumberModel) _then)
      : super(_value, (v) => _then(v as _BatchNumberModel));

  @override
  _BatchNumberModel get _value => super._value as _BatchNumberModel;

  @override
  $Res call({
    Object? batchNumber = freezed,
  }) {
    return _then(_BatchNumberModel(
      batchNumber: batchNumber == freezed
          ? _value.batchNumber
          : batchNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BatchNumberModel implements _BatchNumberModel {
  _$_BatchNumberModel({@JsonKey(name: 'batch_no') required this.batchNumber});

  factory _$_BatchNumberModel.fromJson(Map<String, dynamic> json) =>
      _$$_BatchNumberModelFromJson(json);

  @override
  @JsonKey(name: 'batch_no')
  final String batchNumber;

  @override
  String toString() {
    return 'BatchNumberModel(batchNumber: $batchNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatchNumberModel &&
            const DeepCollectionEquality()
                .equals(other.batchNumber, batchNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(batchNumber));

  @JsonKey(ignore: true)
  @override
  _$BatchNumberModelCopyWith<_BatchNumberModel> get copyWith =>
      __$BatchNumberModelCopyWithImpl<_BatchNumberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BatchNumberModelToJson(this);
  }
}

abstract class _BatchNumberModel implements BatchNumberModel {
  factory _BatchNumberModel(
          {@JsonKey(name: 'batch_no') required String batchNumber}) =
      _$_BatchNumberModel;

  factory _BatchNumberModel.fromJson(Map<String, dynamic> json) =
      _$_BatchNumberModel.fromJson;

  @override
  @JsonKey(name: 'batch_no')
  String get batchNumber;
  @override
  @JsonKey(ignore: true)
  _$BatchNumberModelCopyWith<_BatchNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InstrumentCodeResponse _$InstrumentCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _InstrumentCodeResponse.fromJson(json);
}

/// @nodoc
class _$InstrumentCodeResponseTearOff {
  const _$InstrumentCodeResponseTearOff();

  _InstrumentCodeResponse call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<InstrumentCodeModel> message,
      @JsonKey(name: 'status') required String status}) {
    return _InstrumentCodeResponse(
      name: name,
      returnCode: returnCode,
      message: message,
      status: status,
    );
  }

  InstrumentCodeResponse fromJson(Map<String, Object?> json) {
    return InstrumentCodeResponse.fromJson(json);
  }
}

/// @nodoc
const $InstrumentCodeResponse = _$InstrumentCodeResponseTearOff();

/// @nodoc
mixin _$InstrumentCodeResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<InstrumentCodeModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstrumentCodeResponseCopyWith<InstrumentCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentCodeResponseCopyWith<$Res> {
  factory $InstrumentCodeResponseCopyWith(InstrumentCodeResponse value,
          $Res Function(InstrumentCodeResponse) then) =
      _$InstrumentCodeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<InstrumentCodeModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$InstrumentCodeResponseCopyWithImpl<$Res>
    implements $InstrumentCodeResponseCopyWith<$Res> {
  _$InstrumentCodeResponseCopyWithImpl(this._value, this._then);

  final InstrumentCodeResponse _value;
  // ignore: unused_field
  final $Res Function(InstrumentCodeResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<InstrumentCodeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstrumentCodeResponseCopyWith<$Res>
    implements $InstrumentCodeResponseCopyWith<$Res> {
  factory _$InstrumentCodeResponseCopyWith(_InstrumentCodeResponse value,
          $Res Function(_InstrumentCodeResponse) then) =
      __$InstrumentCodeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<InstrumentCodeModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$InstrumentCodeResponseCopyWithImpl<$Res>
    extends _$InstrumentCodeResponseCopyWithImpl<$Res>
    implements _$InstrumentCodeResponseCopyWith<$Res> {
  __$InstrumentCodeResponseCopyWithImpl(_InstrumentCodeResponse _value,
      $Res Function(_InstrumentCodeResponse) _then)
      : super(_value, (v) => _then(v as _InstrumentCodeResponse));

  @override
  _InstrumentCodeResponse get _value => super._value as _InstrumentCodeResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_InstrumentCodeResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<InstrumentCodeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstrumentCodeResponse implements _InstrumentCodeResponse {
  _$_InstrumentCodeResponse(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.returnCode,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_InstrumentCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InstrumentCodeResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<InstrumentCodeModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'InstrumentCodeResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstrumentCodeResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$InstrumentCodeResponseCopyWith<_InstrumentCodeResponse> get copyWith =>
      __$InstrumentCodeResponseCopyWithImpl<_InstrumentCodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstrumentCodeResponseToJson(this);
  }
}

abstract class _InstrumentCodeResponse implements InstrumentCodeResponse {
  factory _InstrumentCodeResponse(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'code') required String returnCode,
          @JsonKey(name: 'msg') required List<InstrumentCodeModel> message,
          @JsonKey(name: 'status') required String status}) =
      _$_InstrumentCodeResponse;

  factory _InstrumentCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_InstrumentCodeResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<InstrumentCodeModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$InstrumentCodeResponseCopyWith<_InstrumentCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

InstrumentCodeModel _$InstrumentCodeModelFromJson(Map<String, dynamic> json) {
  return _InstrumentCodeModel.fromJson(json);
}

/// @nodoc
class _$InstrumentCodeModelTearOff {
  const _$InstrumentCodeModelTearOff();

  _InstrumentCodeModel call(
      {@JsonKey(name: 'instruCodeNo') required String instrumentCodeNo}) {
    return _InstrumentCodeModel(
      instrumentCodeNo: instrumentCodeNo,
    );
  }

  InstrumentCodeModel fromJson(Map<String, Object?> json) {
    return InstrumentCodeModel.fromJson(json);
  }
}

/// @nodoc
const $InstrumentCodeModel = _$InstrumentCodeModelTearOff();

/// @nodoc
mixin _$InstrumentCodeModel {
  @JsonKey(name: 'instruCodeNo')
  String get instrumentCodeNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstrumentCodeModelCopyWith<InstrumentCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentCodeModelCopyWith<$Res> {
  factory $InstrumentCodeModelCopyWith(
          InstrumentCodeModel value, $Res Function(InstrumentCodeModel) then) =
      _$InstrumentCodeModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'instruCodeNo') String instrumentCodeNo});
}

/// @nodoc
class _$InstrumentCodeModelCopyWithImpl<$Res>
    implements $InstrumentCodeModelCopyWith<$Res> {
  _$InstrumentCodeModelCopyWithImpl(this._value, this._then);

  final InstrumentCodeModel _value;
  // ignore: unused_field
  final $Res Function(InstrumentCodeModel) _then;

  @override
  $Res call({
    Object? instrumentCodeNo = freezed,
  }) {
    return _then(_value.copyWith(
      instrumentCodeNo: instrumentCodeNo == freezed
          ? _value.instrumentCodeNo
          : instrumentCodeNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstrumentCodeModelCopyWith<$Res>
    implements $InstrumentCodeModelCopyWith<$Res> {
  factory _$InstrumentCodeModelCopyWith(_InstrumentCodeModel value,
          $Res Function(_InstrumentCodeModel) then) =
      __$InstrumentCodeModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'instruCodeNo') String instrumentCodeNo});
}

/// @nodoc
class __$InstrumentCodeModelCopyWithImpl<$Res>
    extends _$InstrumentCodeModelCopyWithImpl<$Res>
    implements _$InstrumentCodeModelCopyWith<$Res> {
  __$InstrumentCodeModelCopyWithImpl(
      _InstrumentCodeModel _value, $Res Function(_InstrumentCodeModel) _then)
      : super(_value, (v) => _then(v as _InstrumentCodeModel));

  @override
  _InstrumentCodeModel get _value => super._value as _InstrumentCodeModel;

  @override
  $Res call({
    Object? instrumentCodeNo = freezed,
  }) {
    return _then(_InstrumentCodeModel(
      instrumentCodeNo: instrumentCodeNo == freezed
          ? _value.instrumentCodeNo
          : instrumentCodeNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstrumentCodeModel implements _InstrumentCodeModel {
  _$_InstrumentCodeModel(
      {@JsonKey(name: 'instruCodeNo') required this.instrumentCodeNo});

  factory _$_InstrumentCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_InstrumentCodeModelFromJson(json);

  @override
  @JsonKey(name: 'instruCodeNo')
  final String instrumentCodeNo;

  @override
  String toString() {
    return 'InstrumentCodeModel(instrumentCodeNo: $instrumentCodeNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstrumentCodeModel &&
            const DeepCollectionEquality()
                .equals(other.instrumentCodeNo, instrumentCodeNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(instrumentCodeNo));

  @JsonKey(ignore: true)
  @override
  _$InstrumentCodeModelCopyWith<_InstrumentCodeModel> get copyWith =>
      __$InstrumentCodeModelCopyWithImpl<_InstrumentCodeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstrumentCodeModelToJson(this);
  }
}

abstract class _InstrumentCodeModel implements InstrumentCodeModel {
  factory _InstrumentCodeModel(
          {@JsonKey(name: 'instruCodeNo') required String instrumentCodeNo}) =
      _$_InstrumentCodeModel;

  factory _InstrumentCodeModel.fromJson(Map<String, dynamic> json) =
      _$_InstrumentCodeModel.fromJson;

  @override
  @JsonKey(name: 'instruCodeNo')
  String get instrumentCodeNo;
  @override
  @JsonKey(ignore: true)
  _$InstrumentCodeModelCopyWith<_InstrumentCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InstrumentTypeResponse _$InstrumentTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _InstrumentTypeResponse.fromJson(json);
}

/// @nodoc
class _$InstrumentTypeResponseTearOff {
  const _$InstrumentTypeResponseTearOff();

  _InstrumentTypeResponse call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<InstrumentTypeModel> message,
      @JsonKey(name: 'status') required String status}) {
    return _InstrumentTypeResponse(
      name: name,
      returnCode: returnCode,
      message: message,
      status: status,
    );
  }

  InstrumentTypeResponse fromJson(Map<String, Object?> json) {
    return InstrumentTypeResponse.fromJson(json);
  }
}

/// @nodoc
const $InstrumentTypeResponse = _$InstrumentTypeResponseTearOff();

/// @nodoc
mixin _$InstrumentTypeResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<InstrumentTypeModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstrumentTypeResponseCopyWith<InstrumentTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentTypeResponseCopyWith<$Res> {
  factory $InstrumentTypeResponseCopyWith(InstrumentTypeResponse value,
          $Res Function(InstrumentTypeResponse) then) =
      _$InstrumentTypeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<InstrumentTypeModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$InstrumentTypeResponseCopyWithImpl<$Res>
    implements $InstrumentTypeResponseCopyWith<$Res> {
  _$InstrumentTypeResponseCopyWithImpl(this._value, this._then);

  final InstrumentTypeResponse _value;
  // ignore: unused_field
  final $Res Function(InstrumentTypeResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<InstrumentTypeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstrumentTypeResponseCopyWith<$Res>
    implements $InstrumentTypeResponseCopyWith<$Res> {
  factory _$InstrumentTypeResponseCopyWith(_InstrumentTypeResponse value,
          $Res Function(_InstrumentTypeResponse) then) =
      __$InstrumentTypeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<InstrumentTypeModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$InstrumentTypeResponseCopyWithImpl<$Res>
    extends _$InstrumentTypeResponseCopyWithImpl<$Res>
    implements _$InstrumentTypeResponseCopyWith<$Res> {
  __$InstrumentTypeResponseCopyWithImpl(_InstrumentTypeResponse _value,
      $Res Function(_InstrumentTypeResponse) _then)
      : super(_value, (v) => _then(v as _InstrumentTypeResponse));

  @override
  _InstrumentTypeResponse get _value => super._value as _InstrumentTypeResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_InstrumentTypeResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<InstrumentTypeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstrumentTypeResponse implements _InstrumentTypeResponse {
  _$_InstrumentTypeResponse(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.returnCode,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_InstrumentTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InstrumentTypeResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<InstrumentTypeModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'InstrumentTypeResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstrumentTypeResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$InstrumentTypeResponseCopyWith<_InstrumentTypeResponse> get copyWith =>
      __$InstrumentTypeResponseCopyWithImpl<_InstrumentTypeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstrumentTypeResponseToJson(this);
  }
}

abstract class _InstrumentTypeResponse implements InstrumentTypeResponse {
  factory _InstrumentTypeResponse(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'code') required String returnCode,
          @JsonKey(name: 'msg') required List<InstrumentTypeModel> message,
          @JsonKey(name: 'status') required String status}) =
      _$_InstrumentTypeResponse;

  factory _InstrumentTypeResponse.fromJson(Map<String, dynamic> json) =
      _$_InstrumentTypeResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<InstrumentTypeModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$InstrumentTypeResponseCopyWith<_InstrumentTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

InstrumentTypeModel _$InstrumentTypeModelFromJson(Map<String, dynamic> json) {
  return _InstrumentTypeModel.fromJson(json);
}

/// @nodoc
class _$InstrumentTypeModelTearOff {
  const _$InstrumentTypeModelTearOff();

  _InstrumentTypeModel call(
      {@JsonKey(name: 'instruType') required String instrumentType}) {
    return _InstrumentTypeModel(
      instrumentType: instrumentType,
    );
  }

  InstrumentTypeModel fromJson(Map<String, Object?> json) {
    return InstrumentTypeModel.fromJson(json);
  }
}

/// @nodoc
const $InstrumentTypeModel = _$InstrumentTypeModelTearOff();

/// @nodoc
mixin _$InstrumentTypeModel {
  @JsonKey(name: 'instruType')
  String get instrumentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstrumentTypeModelCopyWith<InstrumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentTypeModelCopyWith<$Res> {
  factory $InstrumentTypeModelCopyWith(
          InstrumentTypeModel value, $Res Function(InstrumentTypeModel) then) =
      _$InstrumentTypeModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'instruType') String instrumentType});
}

/// @nodoc
class _$InstrumentTypeModelCopyWithImpl<$Res>
    implements $InstrumentTypeModelCopyWith<$Res> {
  _$InstrumentTypeModelCopyWithImpl(this._value, this._then);

  final InstrumentTypeModel _value;
  // ignore: unused_field
  final $Res Function(InstrumentTypeModel) _then;

  @override
  $Res call({
    Object? instrumentType = freezed,
  }) {
    return _then(_value.copyWith(
      instrumentType: instrumentType == freezed
          ? _value.instrumentType
          : instrumentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstrumentTypeModelCopyWith<$Res>
    implements $InstrumentTypeModelCopyWith<$Res> {
  factory _$InstrumentTypeModelCopyWith(_InstrumentTypeModel value,
          $Res Function(_InstrumentTypeModel) then) =
      __$InstrumentTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'instruType') String instrumentType});
}

/// @nodoc
class __$InstrumentTypeModelCopyWithImpl<$Res>
    extends _$InstrumentTypeModelCopyWithImpl<$Res>
    implements _$InstrumentTypeModelCopyWith<$Res> {
  __$InstrumentTypeModelCopyWithImpl(
      _InstrumentTypeModel _value, $Res Function(_InstrumentTypeModel) _then)
      : super(_value, (v) => _then(v as _InstrumentTypeModel));

  @override
  _InstrumentTypeModel get _value => super._value as _InstrumentTypeModel;

  @override
  $Res call({
    Object? instrumentType = freezed,
  }) {
    return _then(_InstrumentTypeModel(
      instrumentType: instrumentType == freezed
          ? _value.instrumentType
          : instrumentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstrumentTypeModel implements _InstrumentTypeModel {
  _$_InstrumentTypeModel(
      {@JsonKey(name: 'instruType') required this.instrumentType});

  factory _$_InstrumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_InstrumentTypeModelFromJson(json);

  @override
  @JsonKey(name: 'instruType')
  final String instrumentType;

  @override
  String toString() {
    return 'InstrumentTypeModel(instrumentType: $instrumentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstrumentTypeModel &&
            const DeepCollectionEquality()
                .equals(other.instrumentType, instrumentType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(instrumentType));

  @JsonKey(ignore: true)
  @override
  _$InstrumentTypeModelCopyWith<_InstrumentTypeModel> get copyWith =>
      __$InstrumentTypeModelCopyWithImpl<_InstrumentTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstrumentTypeModelToJson(this);
  }
}

abstract class _InstrumentTypeModel implements InstrumentTypeModel {
  factory _InstrumentTypeModel(
          {@JsonKey(name: 'instruType') required String instrumentType}) =
      _$_InstrumentTypeModel;

  factory _InstrumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$_InstrumentTypeModel.fromJson;

  @override
  @JsonKey(name: 'instruType')
  String get instrumentType;
  @override
  @JsonKey(ignore: true)
  _$InstrumentTypeModelCopyWith<_InstrumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCodeResponse _$ProductCodeResponseFromJson(Map<String, dynamic> json) {
  return _ProductCodeResponse.fromJson(json);
}

/// @nodoc
class _$ProductCodeResponseTearOff {
  const _$ProductCodeResponseTearOff();

  _ProductCodeResponse call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<ProductCodeModel> message,
      @JsonKey(name: 'status') required String status}) {
    return _ProductCodeResponse(
      name: name,
      returnCode: returnCode,
      message: message,
      status: status,
    );
  }

  ProductCodeResponse fromJson(Map<String, Object?> json) {
    return ProductCodeResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductCodeResponse = _$ProductCodeResponseTearOff();

/// @nodoc
mixin _$ProductCodeResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<ProductCodeModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCodeResponseCopyWith<ProductCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCodeResponseCopyWith<$Res> {
  factory $ProductCodeResponseCopyWith(
          ProductCodeResponse value, $Res Function(ProductCodeResponse) then) =
      _$ProductCodeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<ProductCodeModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$ProductCodeResponseCopyWithImpl<$Res>
    implements $ProductCodeResponseCopyWith<$Res> {
  _$ProductCodeResponseCopyWithImpl(this._value, this._then);

  final ProductCodeResponse _value;
  // ignore: unused_field
  final $Res Function(ProductCodeResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ProductCodeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCodeResponseCopyWith<$Res>
    implements $ProductCodeResponseCopyWith<$Res> {
  factory _$ProductCodeResponseCopyWith(_ProductCodeResponse value,
          $Res Function(_ProductCodeResponse) then) =
      __$ProductCodeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<ProductCodeModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$ProductCodeResponseCopyWithImpl<$Res>
    extends _$ProductCodeResponseCopyWithImpl<$Res>
    implements _$ProductCodeResponseCopyWith<$Res> {
  __$ProductCodeResponseCopyWithImpl(
      _ProductCodeResponse _value, $Res Function(_ProductCodeResponse) _then)
      : super(_value, (v) => _then(v as _ProductCodeResponse));

  @override
  _ProductCodeResponse get _value => super._value as _ProductCodeResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_ProductCodeResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ProductCodeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCodeResponse implements _ProductCodeResponse {
  _$_ProductCodeResponse(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.returnCode,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_ProductCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCodeResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<ProductCodeModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'ProductCodeResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCodeResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ProductCodeResponseCopyWith<_ProductCodeResponse> get copyWith =>
      __$ProductCodeResponseCopyWithImpl<_ProductCodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCodeResponseToJson(this);
  }
}

abstract class _ProductCodeResponse implements ProductCodeResponse {
  factory _ProductCodeResponse(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'code') required String returnCode,
          @JsonKey(name: 'msg') required List<ProductCodeModel> message,
          @JsonKey(name: 'status') required String status}) =
      _$_ProductCodeResponse;

  factory _ProductCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductCodeResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<ProductCodeModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$ProductCodeResponseCopyWith<_ProductCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCodeModel _$ProductCodeModelFromJson(Map<String, dynamic> json) {
  return _ProductCodeModel.fromJson(json);
}

/// @nodoc
class _$ProductCodeModelTearOff {
  const _$ProductCodeModelTearOff();

  _ProductCodeModel call(
      {@JsonKey(name: 'prod_code') required String productCode}) {
    return _ProductCodeModel(
      productCode: productCode,
    );
  }

  ProductCodeModel fromJson(Map<String, Object?> json) {
    return ProductCodeModel.fromJson(json);
  }
}

/// @nodoc
const $ProductCodeModel = _$ProductCodeModelTearOff();

/// @nodoc
mixin _$ProductCodeModel {
  @JsonKey(name: 'prod_code')
  String get productCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCodeModelCopyWith<ProductCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCodeModelCopyWith<$Res> {
  factory $ProductCodeModelCopyWith(
          ProductCodeModel value, $Res Function(ProductCodeModel) then) =
      _$ProductCodeModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'prod_code') String productCode});
}

/// @nodoc
class _$ProductCodeModelCopyWithImpl<$Res>
    implements $ProductCodeModelCopyWith<$Res> {
  _$ProductCodeModelCopyWithImpl(this._value, this._then);

  final ProductCodeModel _value;
  // ignore: unused_field
  final $Res Function(ProductCodeModel) _then;

  @override
  $Res call({
    Object? productCode = freezed,
  }) {
    return _then(_value.copyWith(
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCodeModelCopyWith<$Res>
    implements $ProductCodeModelCopyWith<$Res> {
  factory _$ProductCodeModelCopyWith(
          _ProductCodeModel value, $Res Function(_ProductCodeModel) then) =
      __$ProductCodeModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'prod_code') String productCode});
}

/// @nodoc
class __$ProductCodeModelCopyWithImpl<$Res>
    extends _$ProductCodeModelCopyWithImpl<$Res>
    implements _$ProductCodeModelCopyWith<$Res> {
  __$ProductCodeModelCopyWithImpl(
      _ProductCodeModel _value, $Res Function(_ProductCodeModel) _then)
      : super(_value, (v) => _then(v as _ProductCodeModel));

  @override
  _ProductCodeModel get _value => super._value as _ProductCodeModel;

  @override
  $Res call({
    Object? productCode = freezed,
  }) {
    return _then(_ProductCodeModel(
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCodeModel implements _ProductCodeModel {
  _$_ProductCodeModel({@JsonKey(name: 'prod_code') required this.productCode});

  factory _$_ProductCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCodeModelFromJson(json);

  @override
  @JsonKey(name: 'prod_code')
  final String productCode;

  @override
  String toString() {
    return 'ProductCodeModel(productCode: $productCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCodeModel &&
            const DeepCollectionEquality()
                .equals(other.productCode, productCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productCode));

  @JsonKey(ignore: true)
  @override
  _$ProductCodeModelCopyWith<_ProductCodeModel> get copyWith =>
      __$ProductCodeModelCopyWithImpl<_ProductCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCodeModelToJson(this);
  }
}

abstract class _ProductCodeModel implements ProductCodeModel {
  factory _ProductCodeModel(
          {@JsonKey(name: 'prod_code') required String productCode}) =
      _$_ProductCodeModel;

  factory _ProductCodeModel.fromJson(Map<String, dynamic> json) =
      _$_ProductCodeModel.fromJson;

  @override
  @JsonKey(name: 'prod_code')
  String get productCode;
  @override
  @JsonKey(ignore: true)
  _$ProductCodeModelCopyWith<_ProductCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailsResponse _$ProductDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailsResponse.fromJson(json);
}

/// @nodoc
class _$ProductDetailsResponseTearOff {
  const _$ProductDetailsResponseTearOff();

  _ProductDetailsResponse call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<ProductDetailModel> message,
      @JsonKey(name: 'status') required String status}) {
    return _ProductDetailsResponse(
      name: name,
      returnCode: returnCode,
      message: message,
      status: status,
    );
  }

  ProductDetailsResponse fromJson(Map<String, Object?> json) {
    return ProductDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductDetailsResponse = _$ProductDetailsResponseTearOff();

/// @nodoc
mixin _$ProductDetailsResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<ProductDetailModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsResponseCopyWith<$Res> {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value,
          $Res Function(ProductDetailsResponse) then) =
      _$ProductDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<ProductDetailModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._value, this._then);

  final ProductDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductDetailsResponseCopyWith<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$ProductDetailsResponseCopyWith(_ProductDetailsResponse value,
          $Res Function(_ProductDetailsResponse) then) =
      __$ProductDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<ProductDetailModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$ProductDetailsResponseCopyWithImpl<$Res>
    extends _$ProductDetailsResponseCopyWithImpl<$Res>
    implements _$ProductDetailsResponseCopyWith<$Res> {
  __$ProductDetailsResponseCopyWithImpl(_ProductDetailsResponse _value,
      $Res Function(_ProductDetailsResponse) _then)
      : super(_value, (v) => _then(v as _ProductDetailsResponse));

  @override
  _ProductDetailsResponse get _value => super._value as _ProductDetailsResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_ProductDetailsResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsResponse implements _ProductDetailsResponse {
  _$_ProductDetailsResponse(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.returnCode,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<ProductDetailModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'ProductDetailsResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ProductDetailsResponseCopyWith<_ProductDetailsResponse> get copyWith =>
      __$ProductDetailsResponseCopyWithImpl<_ProductDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsResponseToJson(this);
  }
}

abstract class _ProductDetailsResponse implements ProductDetailsResponse {
  factory _ProductDetailsResponse(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'code') required String returnCode,
          @JsonKey(name: 'msg') required List<ProductDetailModel> message,
          @JsonKey(name: 'status') required String status}) =
      _$_ProductDetailsResponse;

  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<ProductDetailModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailsResponseCopyWith<_ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailModel.fromJson(json);
}

/// @nodoc
class _$ProductDetailModelTearOff {
  const _$ProductDetailModelTearOff();

  _ProductDetailModel call(
      {@JsonKey(name: 'ProdType') required String productType,
      @JsonKey(name: 'prod_name') required String productName,
      @JsonKey(name: 'prodVersion') required String productVersion,
      @JsonKey(name: 'version') required String version,
      @JsonKey(name: 'BMR') required String bmr,
      @JsonKey(name: 'BMRVersion') required String bmrVersion}) {
    return _ProductDetailModel(
      productType: productType,
      productName: productName,
      productVersion: productVersion,
      version: version,
      bmr: bmr,
      bmrVersion: bmrVersion,
    );
  }

  ProductDetailModel fromJson(Map<String, Object?> json) {
    return ProductDetailModel.fromJson(json);
  }
}

/// @nodoc
const $ProductDetailModel = _$ProductDetailModelTearOff();

/// @nodoc
mixin _$ProductDetailModel {
  @JsonKey(name: 'ProdType')
  String get productType => throw _privateConstructorUsedError;
  @JsonKey(name: 'prod_name')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'prodVersion')
  String get productVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'BMR')
  String get bmr => throw _privateConstructorUsedError;
  @JsonKey(name: 'BMRVersion')
  String get bmrVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailModelCopyWith<ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailModelCopyWith<$Res> {
  factory $ProductDetailModelCopyWith(
          ProductDetailModel value, $Res Function(ProductDetailModel) then) =
      _$ProductDetailModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ProdType') String productType,
      @JsonKey(name: 'prod_name') String productName,
      @JsonKey(name: 'prodVersion') String productVersion,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'BMR') String bmr,
      @JsonKey(name: 'BMRVersion') String bmrVersion});
}

/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._value, this._then);

  final ProductDetailModel _value;
  // ignore: unused_field
  final $Res Function(ProductDetailModel) _then;

  @override
  $Res call({
    Object? productType = freezed,
    Object? productName = freezed,
    Object? productVersion = freezed,
    Object? version = freezed,
    Object? bmr = freezed,
    Object? bmrVersion = freezed,
  }) {
    return _then(_value.copyWith(
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productVersion: productVersion == freezed
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      bmr: bmr == freezed
          ? _value.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as String,
      bmrVersion: bmrVersion == freezed
          ? _value.bmrVersion
          : bmrVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductDetailModelCopyWith<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  factory _$ProductDetailModelCopyWith(
          _ProductDetailModel value, $Res Function(_ProductDetailModel) then) =
      __$ProductDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ProdType') String productType,
      @JsonKey(name: 'prod_name') String productName,
      @JsonKey(name: 'prodVersion') String productVersion,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'BMR') String bmr,
      @JsonKey(name: 'BMRVersion') String bmrVersion});
}

/// @nodoc
class __$ProductDetailModelCopyWithImpl<$Res>
    extends _$ProductDetailModelCopyWithImpl<$Res>
    implements _$ProductDetailModelCopyWith<$Res> {
  __$ProductDetailModelCopyWithImpl(
      _ProductDetailModel _value, $Res Function(_ProductDetailModel) _then)
      : super(_value, (v) => _then(v as _ProductDetailModel));

  @override
  _ProductDetailModel get _value => super._value as _ProductDetailModel;

  @override
  $Res call({
    Object? productType = freezed,
    Object? productName = freezed,
    Object? productVersion = freezed,
    Object? version = freezed,
    Object? bmr = freezed,
    Object? bmrVersion = freezed,
  }) {
    return _then(_ProductDetailModel(
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productVersion: productVersion == freezed
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      bmr: bmr == freezed
          ? _value.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as String,
      bmrVersion: bmrVersion == freezed
          ? _value.bmrVersion
          : bmrVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailModel implements _ProductDetailModel {
  _$_ProductDetailModel(
      {@JsonKey(name: 'ProdType') required this.productType,
      @JsonKey(name: 'prod_name') required this.productName,
      @JsonKey(name: 'prodVersion') required this.productVersion,
      @JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'BMR') required this.bmr,
      @JsonKey(name: 'BMRVersion') required this.bmrVersion});

  factory _$_ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailModelFromJson(json);

  @override
  @JsonKey(name: 'ProdType')
  final String productType;
  @override
  @JsonKey(name: 'prod_name')
  final String productName;
  @override
  @JsonKey(name: 'prodVersion')
  final String productVersion;
  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'BMR')
  final String bmr;
  @override
  @JsonKey(name: 'BMRVersion')
  final String bmrVersion;

  @override
  String toString() {
    return 'ProductDetailModel(productType: $productType, productName: $productName, productVersion: $productVersion, version: $version, bmr: $bmr, bmrVersion: $bmrVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailModel &&
            const DeepCollectionEquality()
                .equals(other.productType, productType) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality()
                .equals(other.productVersion, productVersion) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.bmr, bmr) &&
            const DeepCollectionEquality()
                .equals(other.bmrVersion, bmrVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productType),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(productVersion),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(bmr),
      const DeepCollectionEquality().hash(bmrVersion));

  @JsonKey(ignore: true)
  @override
  _$ProductDetailModelCopyWith<_ProductDetailModel> get copyWith =>
      __$ProductDetailModelCopyWithImpl<_ProductDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailModelToJson(this);
  }
}

abstract class _ProductDetailModel implements ProductDetailModel {
  factory _ProductDetailModel(
          {@JsonKey(name: 'ProdType') required String productType,
          @JsonKey(name: 'prod_name') required String productName,
          @JsonKey(name: 'prodVersion') required String productVersion,
          @JsonKey(name: 'version') required String version,
          @JsonKey(name: 'BMR') required String bmr,
          @JsonKey(name: 'BMRVersion') required String bmrVersion}) =
      _$_ProductDetailModel;

  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailModel.fromJson;

  @override
  @JsonKey(name: 'ProdType')
  String get productType;
  @override
  @JsonKey(name: 'prod_name')
  String get productName;
  @override
  @JsonKey(name: 'prodVersion')
  String get productVersion;
  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(name: 'BMR')
  String get bmr;
  @override
  @JsonKey(name: 'BMRVersion')
  String get bmrVersion;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailModelCopyWith<_ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomResponse _$RoomResponseFromJson(Map<String, dynamic> json) {
  return _RoomResponse.fromJson(json);
}

/// @nodoc
class _$RoomResponseTearOff {
  const _$RoomResponseTearOff();

  _RoomResponse call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<RoomModel> message,
      @JsonKey(name: 'status') required String status}) {
    return _RoomResponse(
      name: name,
      returnCode: returnCode,
      message: message,
      status: status,
    );
  }

  RoomResponse fromJson(Map<String, Object?> json) {
    return RoomResponse.fromJson(json);
  }
}

/// @nodoc
const $RoomResponse = _$RoomResponseTearOff();

/// @nodoc
mixin _$RoomResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<RoomModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomResponseCopyWith<RoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomResponseCopyWith<$Res> {
  factory $RoomResponseCopyWith(
          RoomResponse value, $Res Function(RoomResponse) then) =
      _$RoomResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<RoomModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$RoomResponseCopyWithImpl<$Res> implements $RoomResponseCopyWith<$Res> {
  _$RoomResponseCopyWithImpl(this._value, this._then);

  final RoomResponse _value;
  // ignore: unused_field
  final $Res Function(RoomResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RoomResponseCopyWith<$Res>
    implements $RoomResponseCopyWith<$Res> {
  factory _$RoomResponseCopyWith(
          _RoomResponse value, $Res Function(_RoomResponse) then) =
      __$RoomResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<RoomModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$RoomResponseCopyWithImpl<$Res> extends _$RoomResponseCopyWithImpl<$Res>
    implements _$RoomResponseCopyWith<$Res> {
  __$RoomResponseCopyWithImpl(
      _RoomResponse _value, $Res Function(_RoomResponse) _then)
      : super(_value, (v) => _then(v as _RoomResponse));

  @override
  _RoomResponse get _value => super._value as _RoomResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_RoomResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomResponse implements _RoomResponse {
  _$_RoomResponse(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.returnCode,
      @JsonKey(name: 'msg') required this.message,
      @JsonKey(name: 'status') required this.status});

  factory _$_RoomResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<RoomModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'RoomResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RoomResponseCopyWith<_RoomResponse> get copyWith =>
      __$RoomResponseCopyWithImpl<_RoomResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomResponseToJson(this);
  }
}

abstract class _RoomResponse implements RoomResponse {
  factory _RoomResponse(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String returnCode,
      @JsonKey(name: 'msg') required List<RoomModel> message,
      @JsonKey(name: 'status') required String status}) = _$_RoomResponse;

  factory _RoomResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<RoomModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$RoomResponseCopyWith<_RoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
class _$RoomModelTearOff {
  const _$RoomModelTearOff();

  _RoomModel call({@JsonKey(name: 'roomName') required String roomName}) {
    return _RoomModel(
      roomName: roomName,
    );
  }

  RoomModel fromJson(Map<String, Object?> json) {
    return RoomModel.fromJson(json);
  }
}

/// @nodoc
const $RoomModel = _$RoomModelTearOff();

/// @nodoc
mixin _$RoomModel {
  @JsonKey(name: 'roomName')
  String get roomName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'roomName') String roomName});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res> implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  final RoomModel _value;
  // ignore: unused_field
  final $Res Function(RoomModel) _then;

  @override
  $Res call({
    Object? roomName = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$RoomModelCopyWith(
          _RoomModel value, $Res Function(_RoomModel) then) =
      __$RoomModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'roomName') String roomName});
}

/// @nodoc
class __$RoomModelCopyWithImpl<$Res> extends _$RoomModelCopyWithImpl<$Res>
    implements _$RoomModelCopyWith<$Res> {
  __$RoomModelCopyWithImpl(_RoomModel _value, $Res Function(_RoomModel) _then)
      : super(_value, (v) => _then(v as _RoomModel));

  @override
  _RoomModel get _value => super._value as _RoomModel;

  @override
  $Res call({
    Object? roomName = freezed,
  }) {
    return _then(_RoomModel(
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomModel implements _RoomModel {
  _$_RoomModel({@JsonKey(name: 'roomName') required this.roomName});

  factory _$_RoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomModelFromJson(json);

  @override
  @JsonKey(name: 'roomName')
  final String roomName;

  @override
  String toString() {
    return 'RoomModel(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomModel &&
            const DeepCollectionEquality().equals(other.roomName, roomName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(roomName));

  @JsonKey(ignore: true)
  @override
  _$RoomModelCopyWith<_RoomModel> get copyWith =>
      __$RoomModelCopyWithImpl<_RoomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomModelToJson(this);
  }
}

abstract class _RoomModel implements RoomModel {
  factory _RoomModel({@JsonKey(name: 'roomName') required String roomName}) =
      _$_RoomModel;

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$_RoomModel.fromJson;

  @override
  @JsonKey(name: 'roomName')
  String get roomName;
  @override
  @JsonKey(ignore: true)
  _$RoomModelCopyWith<_RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StageResponse _$StageResponseFromJson(Map<String, dynamic> json) {
  return _StageResponse.fromJson(json);
}

/// @nodoc
class _$StageResponseTearOff {
  const _$StageResponseTearOff();

  _StageResponse call(
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<StageModel> message,
      @JsonKey(name: 'status') String status) {
    return _StageResponse(
      name,
      returnCode,
      message,
      status,
    );
  }

  StageResponse fromJson(Map<String, Object?> json) {
    return StageResponse.fromJson(json);
  }
}

/// @nodoc
const $StageResponse = _$StageResponseTearOff();

/// @nodoc
mixin _$StageResponse {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<StageModel> get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageResponseCopyWith<StageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageResponseCopyWith<$Res> {
  factory $StageResponseCopyWith(
          StageResponse value, $Res Function(StageResponse) then) =
      _$StageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<StageModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$StageResponseCopyWithImpl<$Res>
    implements $StageResponseCopyWith<$Res> {
  _$StageResponseCopyWithImpl(this._value, this._then);

  final StageResponse _value;
  // ignore: unused_field
  final $Res Function(StageResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode: returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<StageModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StageResponseCopyWith<$Res>
    implements $StageResponseCopyWith<$Res> {
  factory _$StageResponseCopyWith(
          _StageResponse value, $Res Function(_StageResponse) then) =
      __$StageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<StageModel> message,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$StageResponseCopyWithImpl<$Res>
    extends _$StageResponseCopyWithImpl<$Res>
    implements _$StageResponseCopyWith<$Res> {
  __$StageResponseCopyWithImpl(
      _StageResponse _value, $Res Function(_StageResponse) _then)
      : super(_value, (v) => _then(v as _StageResponse));

  @override
  _StageResponse get _value => super._value as _StageResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? returnCode = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_StageResponse(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnCode == freezed
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<StageModel>,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StageResponse implements _StageResponse {
  _$_StageResponse(
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'code') this.returnCode,
      @JsonKey(name: 'msg') this.message,
      @JsonKey(name: 'status') this.status);

  factory _$_StageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StageResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String returnCode;
  @override
  @JsonKey(name: 'msg')
  final List<StageModel> message;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'StageResponse(name: $name, returnCode: $returnCode, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StageResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.returnCode, returnCode) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(returnCode),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$StageResponseCopyWith<_StageResponse> get copyWith =>
      __$StageResponseCopyWithImpl<_StageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StageResponseToJson(this);
  }
}

abstract class _StageResponse implements StageResponse {
  factory _StageResponse(
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String returnCode,
      @JsonKey(name: 'msg') List<StageModel> message,
      @JsonKey(name: 'status') String status) = _$_StageResponse;

  factory _StageResponse.fromJson(Map<String, dynamic> json) =
      _$_StageResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get returnCode;
  @override
  @JsonKey(name: 'msg')
  List<StageModel> get message;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$StageResponseCopyWith<_StageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StageModel _$StageModelFromJson(Map<String, dynamic> json) {
  return _StageModel.fromJson(json);
}

/// @nodoc
class _$StageModelTearOff {
  const _$StageModelTearOff();

  _StageModel call({@JsonKey(name: 'stage') required String stage}) {
    return _StageModel(
      stage: stage,
    );
  }

  StageModel fromJson(Map<String, Object?> json) {
    return StageModel.fromJson(json);
  }
}

/// @nodoc
const $StageModel = _$StageModelTearOff();

/// @nodoc
mixin _$StageModel {
  @JsonKey(name: 'stage')
  String get stage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageModelCopyWith<StageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageModelCopyWith<$Res> {
  factory $StageModelCopyWith(
          StageModel value, $Res Function(StageModel) then) =
      _$StageModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'stage') String stage});
}

/// @nodoc
class _$StageModelCopyWithImpl<$Res> implements $StageModelCopyWith<$Res> {
  _$StageModelCopyWithImpl(this._value, this._then);

  final StageModel _value;
  // ignore: unused_field
  final $Res Function(StageModel) _then;

  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(_value.copyWith(
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StageModelCopyWith<$Res> implements $StageModelCopyWith<$Res> {
  factory _$StageModelCopyWith(
          _StageModel value, $Res Function(_StageModel) then) =
      __$StageModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'stage') String stage});
}

/// @nodoc
class __$StageModelCopyWithImpl<$Res> extends _$StageModelCopyWithImpl<$Res>
    implements _$StageModelCopyWith<$Res> {
  __$StageModelCopyWithImpl(
      _StageModel _value, $Res Function(_StageModel) _then)
      : super(_value, (v) => _then(v as _StageModel));

  @override
  _StageModel get _value => super._value as _StageModel;

  @override
  $Res call({
    Object? stage = freezed,
  }) {
    return _then(_StageModel(
      stage: stage == freezed
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StageModel implements _StageModel {
  _$_StageModel({@JsonKey(name: 'stage') required this.stage});

  factory _$_StageModel.fromJson(Map<String, dynamic> json) =>
      _$$_StageModelFromJson(json);

  @override
  @JsonKey(name: 'stage')
  final String stage;

  @override
  String toString() {
    return 'StageModel(stage: $stage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StageModel &&
            const DeepCollectionEquality().equals(other.stage, stage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stage));

  @JsonKey(ignore: true)
  @override
  _$StageModelCopyWith<_StageModel> get copyWith =>
      __$StageModelCopyWithImpl<_StageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StageModelToJson(this);
  }
}

abstract class _StageModel implements StageModel {
  factory _StageModel({@JsonKey(name: 'stage') required String stage}) =
      _$_StageModel;

  factory _StageModel.fromJson(Map<String, dynamic> json) =
      _$_StageModel.fromJson;

  @override
  @JsonKey(name: 'stage')
  String get stage;
  @override
  @JsonKey(ignore: true)
  _$StageModelCopyWith<_StageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
