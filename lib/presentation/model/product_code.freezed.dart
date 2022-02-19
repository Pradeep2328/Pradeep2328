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
