// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonErrorResponse _$JsonErrorResponseFromJson(Map<String, dynamic> json) {
  return _JsonErrorResponse.fromJson(json);
}

/// @nodoc
class _$JsonErrorResponseTearOff {
  const _$JsonErrorResponseTearOff();

  _JsonErrorResponse call(
      {@JsonKey(name: 'msg') required List<ErrorMessage> message}) {
    return _JsonErrorResponse(
      message: message,
    );
  }

  JsonErrorResponse fromJson(Map<String, Object?> json) {
    return JsonErrorResponse.fromJson(json);
  }
}

/// @nodoc
const $JsonErrorResponse = _$JsonErrorResponseTearOff();

/// @nodoc
mixin _$JsonErrorResponse {
  @JsonKey(name: 'msg')
  List<ErrorMessage> get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonErrorResponseCopyWith<JsonErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonErrorResponseCopyWith<$Res> {
  factory $JsonErrorResponseCopyWith(
          JsonErrorResponse value, $Res Function(JsonErrorResponse) then) =
      _$JsonErrorResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'msg') List<ErrorMessage> message});
}

/// @nodoc
class _$JsonErrorResponseCopyWithImpl<$Res>
    implements $JsonErrorResponseCopyWith<$Res> {
  _$JsonErrorResponseCopyWithImpl(this._value, this._then);

  final JsonErrorResponse _value;
  // ignore: unused_field
  final $Res Function(JsonErrorResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ErrorMessage>,
    ));
  }
}

/// @nodoc
abstract class _$JsonErrorResponseCopyWith<$Res>
    implements $JsonErrorResponseCopyWith<$Res> {
  factory _$JsonErrorResponseCopyWith(
          _JsonErrorResponse value, $Res Function(_JsonErrorResponse) then) =
      __$JsonErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'msg') List<ErrorMessage> message});
}

/// @nodoc
class __$JsonErrorResponseCopyWithImpl<$Res>
    extends _$JsonErrorResponseCopyWithImpl<$Res>
    implements _$JsonErrorResponseCopyWith<$Res> {
  __$JsonErrorResponseCopyWithImpl(
      _JsonErrorResponse _value, $Res Function(_JsonErrorResponse) _then)
      : super(_value, (v) => _then(v as _JsonErrorResponse));

  @override
  _JsonErrorResponse get _value => super._value as _JsonErrorResponse;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_JsonErrorResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ErrorMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonErrorResponse implements _JsonErrorResponse {
  _$_JsonErrorResponse({@JsonKey(name: 'msg') required this.message});

  factory _$_JsonErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JsonErrorResponseFromJson(json);

  @override
  @JsonKey(name: 'msg')
  final List<ErrorMessage> message;

  @override
  String toString() {
    return 'JsonErrorResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JsonErrorResponse &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$JsonErrorResponseCopyWith<_JsonErrorResponse> get copyWith =>
      __$JsonErrorResponseCopyWithImpl<_JsonErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JsonErrorResponseToJson(this);
  }
}

abstract class _JsonErrorResponse implements JsonErrorResponse {
  factory _JsonErrorResponse(
          {@JsonKey(name: 'msg') required List<ErrorMessage> message}) =
      _$_JsonErrorResponse;

  factory _JsonErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_JsonErrorResponse.fromJson;

  @override
  @JsonKey(name: 'msg')
  List<ErrorMessage> get message;
  @override
  @JsonKey(ignore: true)
  _$JsonErrorResponseCopyWith<_JsonErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorMessage _$ErrorMessageFromJson(Map<String, dynamic> json) {
  return _ErrorMessage.fromJson(json);
}

/// @nodoc
class _$ErrorMessageTearOff {
  const _$ErrorMessageTearOff();

  _ErrorMessage call({@JsonKey(name: 'message') required String message}) {
    return _ErrorMessage(
      message: message,
    );
  }

  ErrorMessage fromJson(Map<String, Object?> json) {
    return ErrorMessage.fromJson(json);
  }
}

/// @nodoc
const $ErrorMessage = _$ErrorMessageTearOff();

/// @nodoc
mixin _$ErrorMessage {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageCopyWith<ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageCopyWith<$Res> {
  factory $ErrorMessageCopyWith(
          ErrorMessage value, $Res Function(ErrorMessage) then) =
      _$ErrorMessageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ErrorMessageCopyWithImpl<$Res> implements $ErrorMessageCopyWith<$Res> {
  _$ErrorMessageCopyWithImpl(this._value, this._then);

  final ErrorMessage _value;
  // ignore: unused_field
  final $Res Function(ErrorMessage) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorMessageCopyWith<$Res>
    implements $ErrorMessageCopyWith<$Res> {
  factory _$ErrorMessageCopyWith(
          _ErrorMessage value, $Res Function(_ErrorMessage) then) =
      __$ErrorMessageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$ErrorMessageCopyWithImpl<$Res> extends _$ErrorMessageCopyWithImpl<$Res>
    implements _$ErrorMessageCopyWith<$Res> {
  __$ErrorMessageCopyWithImpl(
      _ErrorMessage _value, $Res Function(_ErrorMessage) _then)
      : super(_value, (v) => _then(v as _ErrorMessage));

  @override
  _ErrorMessage get _value => super._value as _ErrorMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorMessage implements _ErrorMessage {
  _$_ErrorMessage({@JsonKey(name: 'message') required this.message});

  factory _$_ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorMessageFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ErrorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorMessageCopyWith<_ErrorMessage> get copyWith =>
      __$ErrorMessageCopyWithImpl<_ErrorMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMessageToJson(this);
  }
}

abstract class _ErrorMessage implements ErrorMessage {
  factory _ErrorMessage({@JsonKey(name: 'message') required String message}) =
      _$_ErrorMessage;

  factory _ErrorMessage.fromJson(Map<String, dynamic> json) =
      _$_ErrorMessage.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ErrorMessageCopyWith<_ErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
