// GENERATED CODE - DO NOT MODIFY BY HAND

part of logout;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Logout> _$logoutSerializer = new _$LogoutSerializer();

class _$LogoutSerializer implements StructuredSerializer<Logout> {
  @override
  final Iterable<Type> types = const [Logout, _$Logout];
  @override
  final String wireName = 'Logout';

  @override
  Iterable<Object?> serialize(Serializers serializers, Logout object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'device_serial_number',
      serializers.serialize(object.deviceSerialNumber,
          specifiedType: const FullType(String)),
      'manual_logout',
      serializers.serialize(object.manualLogout,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Logout deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'device_serial_number':
          result.deviceSerialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manual_logout':
          result.manualLogout = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Logout extends Logout {
  @override
  final String deviceSerialNumber;
  @override
  final bool manualLogout;

  factory _$Logout([void Function(LogoutBuilder)? updates]) =>
      (new LogoutBuilder()..update(updates)).build();

  _$Logout._({required this.deviceSerialNumber, required this.manualLogout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceSerialNumber, 'Logout', 'deviceSerialNumber');
    BuiltValueNullFieldError.checkNotNull(
        manualLogout, 'Logout', 'manualLogout');
  }

  @override
  Logout rebuild(void Function(LogoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutBuilder toBuilder() => new LogoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Logout &&
        deviceSerialNumber == other.deviceSerialNumber &&
        manualLogout == other.manualLogout;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deviceSerialNumber.hashCode), manualLogout.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Logout')
          ..add('deviceSerialNumber', deviceSerialNumber)
          ..add('manualLogout', manualLogout))
        .toString();
  }
}

class LogoutBuilder implements Builder<Logout, LogoutBuilder> {
  _$Logout? _$v;

  String? _deviceSerialNumber;
  String? get deviceSerialNumber => _$this._deviceSerialNumber;
  set deviceSerialNumber(String? deviceSerialNumber) =>
      _$this._deviceSerialNumber = deviceSerialNumber;

  bool? _manualLogout;
  bool? get manualLogout => _$this._manualLogout;
  set manualLogout(bool? manualLogout) => _$this._manualLogout = manualLogout;

  LogoutBuilder();

  LogoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceSerialNumber = $v.deviceSerialNumber;
      _manualLogout = $v.manualLogout;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Logout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Logout;
  }

  @override
  void update(void Function(LogoutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Logout build() {
    final _$result = _$v ??
        new _$Logout._(
            deviceSerialNumber: BuiltValueNullFieldError.checkNotNull(
                deviceSerialNumber, 'Logout', 'deviceSerialNumber'),
            manualLogout: BuiltValueNullFieldError.checkNotNull(
                manualLogout, 'Logout', 'manualLogout'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
