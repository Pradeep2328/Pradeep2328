// GENERATED CODE - DO NOT MODIFY BY HAND

part of login;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Login> _$loginSerializer = new _$LoginSerializer();

class _$LoginSerializer implements StructuredSerializer<Login> {
  @override
  final Iterable<Type> types = const [Login, _$Login];
  @override
  final String wireName = 'Login';

  @override
  Iterable<Object?> serialize(Serializers serializers, Login object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user_name',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'device_serial_number',
      serializers.serialize(object.deviceSerialNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Login deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_serial_number':
          result.deviceSerialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Login extends Login {
  @override
  final String userName;
  @override
  final String password;
  @override
  final String deviceSerialNumber;

  factory _$Login([void Function(LoginBuilder)? updates]) =>
      (new LoginBuilder()..update(updates)).build();

  _$Login._(
      {required this.userName,
      required this.password,
      required this.deviceSerialNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userName, 'Login', 'userName');
    BuiltValueNullFieldError.checkNotNull(password, 'Login', 'password');
    BuiltValueNullFieldError.checkNotNull(
        deviceSerialNumber, 'Login', 'deviceSerialNumber');
  }

  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login &&
        userName == other.userName &&
        password == other.password &&
        deviceSerialNumber == other.deviceSerialNumber;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, userName.hashCode), password.hashCode),
        deviceSerialNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Login')
          ..add('userName', userName)
          ..add('password', password)
          ..add('deviceSerialNumber', deviceSerialNumber))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _deviceSerialNumber;
  String? get deviceSerialNumber => _$this._deviceSerialNumber;
  set deviceSerialNumber(String? deviceSerialNumber) =>
      _$this._deviceSerialNumber = deviceSerialNumber;

  LoginBuilder();

  LoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _password = $v.password;
      _deviceSerialNumber = $v.deviceSerialNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Login build() {
    final _$result = _$v ??
        new _$Login._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, 'Login', 'userName'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'Login', 'password'),
            deviceSerialNumber: BuiltValueNullFieldError.checkNotNull(
                deviceSerialNumber, 'Login', 'deviceSerialNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
