// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCodeApiModel _$ProductCodeApiModelFromJson(Map<String, dynamic> json) {
  return _ProductCodeApiModel.fromJson(json);
}

/// @nodoc
class _$ProductCodeApiModelTearOff {
  const _$ProductCodeApiModelTearOff();

  _ProductCodeApiModel call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'code') required String code,
      @JsonKey(name: 'msg') required List<ProductCodeModel> productCodeList,
      @JsonKey(name: 'status') required String status}) {
    return _ProductCodeApiModel(
      name: name,
      code: code,
      productCodeList: productCodeList,
      status: status,
    );
  }

  ProductCodeApiModel fromJson(Map<String, Object?> json) {
    return ProductCodeApiModel.fromJson(json);
  }
}

/// @nodoc
const $ProductCodeApiModel = _$ProductCodeApiModelTearOff();

/// @nodoc
mixin _$ProductCodeApiModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  List<ProductCodeModel> get productCodeList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCodeApiModelCopyWith<ProductCodeApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCodeApiModelCopyWith<$Res> {
  factory $ProductCodeApiModelCopyWith(
          ProductCodeApiModel value, $Res Function(ProductCodeApiModel) then) =
      _$ProductCodeApiModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'msg') List<ProductCodeModel> productCodeList,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$ProductCodeApiModelCopyWithImpl<$Res>
    implements $ProductCodeApiModelCopyWith<$Res> {
  _$ProductCodeApiModelCopyWithImpl(this._value, this._then);

  final ProductCodeApiModel _value;
  // ignore: unused_field
  final $Res Function(ProductCodeApiModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? productCodeList = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      productCodeList: productCodeList == freezed
          ? _value.productCodeList
          : productCodeList // ignore: cast_nullable_to_non_nullable
              as List<ProductCodeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCodeApiModelCopyWith<$Res>
    implements $ProductCodeApiModelCopyWith<$Res> {
  factory _$ProductCodeApiModelCopyWith(_ProductCodeApiModel value,
          $Res Function(_ProductCodeApiModel) then) =
      __$ProductCodeApiModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'msg') List<ProductCodeModel> productCodeList,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$ProductCodeApiModelCopyWithImpl<$Res>
    extends _$ProductCodeApiModelCopyWithImpl<$Res>
    implements _$ProductCodeApiModelCopyWith<$Res> {
  __$ProductCodeApiModelCopyWithImpl(
      _ProductCodeApiModel _value, $Res Function(_ProductCodeApiModel) _then)
      : super(_value, (v) => _then(v as _ProductCodeApiModel));

  @override
  _ProductCodeApiModel get _value => super._value as _ProductCodeApiModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? productCodeList = freezed,
    Object? status = freezed,
  }) {
    return _then(_ProductCodeApiModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      productCodeList: productCodeList == freezed
          ? _value.productCodeList
          : productCodeList // ignore: cast_nullable_to_non_nullable
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
class _$_ProductCodeApiModel implements _ProductCodeApiModel {
  _$_ProductCodeApiModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'msg') required this.productCodeList,
      @JsonKey(name: 'status') required this.status});

  factory _$_ProductCodeApiModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCodeApiModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'msg')
  final List<ProductCodeModel> productCodeList;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'ProductCodeApiModel(name: $name, code: $code, productCodeList: $productCodeList, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCodeApiModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.productCodeList, productCodeList) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(productCodeList),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ProductCodeApiModelCopyWith<_ProductCodeApiModel> get copyWith =>
      __$ProductCodeApiModelCopyWithImpl<_ProductCodeApiModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCodeApiModelToJson(this);
  }
}

abstract class _ProductCodeApiModel implements ProductCodeApiModel {
  factory _ProductCodeApiModel(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'code') required String code,
          @JsonKey(name: 'msg') required List<ProductCodeModel> productCodeList,
          @JsonKey(name: 'status') required String status}) =
      _$_ProductCodeApiModel;

  factory _ProductCodeApiModel.fromJson(Map<String, dynamic> json) =
      _$_ProductCodeApiModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'msg')
  List<ProductCodeModel> get productCodeList;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$ProductCodeApiModelCopyWith<_ProductCodeApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
