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

Productcode _$ProductcodeFromJson(Map<String, dynamic> json) {
  return _Productcode.fromJson(json);
}

/// @nodoc
class _$ProductcodeTearOff {
  const _$ProductcodeTearOff();

  _Productcode call({@JsonKey(name: 'prod_code') required int userId}) {
    return _Productcode(
      userId: userId,
    );
  }

  Productcode fromJson(Map<String, Object?> json) {
    return Productcode.fromJson(json);
  }
}

/// @nodoc
const $Productcode = _$ProductcodeTearOff();

/// @nodoc
mixin _$Productcode {
  @JsonKey(name: 'prod_code')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductcodeCopyWith<Productcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductcodeCopyWith<$Res> {
  factory $ProductcodeCopyWith(
          Productcode value, $Res Function(Productcode) then) =
      _$ProductcodeCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'prod_code') int userId});
}

/// @nodoc
class _$ProductcodeCopyWithImpl<$Res> implements $ProductcodeCopyWith<$Res> {
  _$ProductcodeCopyWithImpl(this._value, this._then);

  final Productcode _value;
  // ignore: unused_field
  final $Res Function(Productcode) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductcodeCopyWith<$Res>
    implements $ProductcodeCopyWith<$Res> {
  factory _$ProductcodeCopyWith(
          _Productcode value, $Res Function(_Productcode) then) =
      __$ProductcodeCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'prod_code') int userId});
}

/// @nodoc
class __$ProductcodeCopyWithImpl<$Res> extends _$ProductcodeCopyWithImpl<$Res>
    implements _$ProductcodeCopyWith<$Res> {
  __$ProductcodeCopyWithImpl(
      _Productcode _value, $Res Function(_Productcode) _then)
      : super(_value, (v) => _then(v as _Productcode));

  @override
  _Productcode get _value => super._value as _Productcode;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Productcode(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Productcode implements _Productcode {
  _$_Productcode({@JsonKey(name: 'prod_code') required this.userId});

  factory _$_Productcode.fromJson(Map<String, dynamic> json) =>
      _$$_ProductcodeFromJson(json);

  @override
  @JsonKey(name: 'prod_code')
  final int userId;

  @override
  String toString() {
    return 'Productcode(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Productcode &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$ProductcodeCopyWith<_Productcode> get copyWith =>
      __$ProductcodeCopyWithImpl<_Productcode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductcodeToJson(this);
  }
}

abstract class _Productcode implements Productcode {
  factory _Productcode({@JsonKey(name: 'prod_code') required int userId}) =
      _$_Productcode;

  factory _Productcode.fromJson(Map<String, dynamic> json) =
      _$_Productcode.fromJson;

  @override
  @JsonKey(name: 'prod_code')
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$ProductcodeCopyWith<_Productcode> get copyWith =>
      throw _privateConstructorUsedError;
}
