// GENERATED CODE - DO NOT MODIFY BY HAND

part of instrument_code;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstrumentCode> _$instrumentCodeSerializer =
    new _$InstrumentCodeSerializer();

class _$InstrumentCodeSerializer
    implements StructuredSerializer<InstrumentCode> {
  @override
  final Iterable<Type> types = const [InstrumentCode, _$InstrumentCode];
  @override
  final String wireName = 'InstrumentCode';

  @override
  Iterable<Object?> serialize(Serializers serializers, InstrumentCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'instrument_code',
      serializers.serialize(object.instrumentCode,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  InstrumentCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstrumentCodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'instrument_code':
          result.instrumentCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$InstrumentCode extends InstrumentCode {
  @override
  final BuiltList<String> instrumentCode;

  factory _$InstrumentCode([void Function(InstrumentCodeBuilder)? updates]) =>
      (new InstrumentCodeBuilder()..update(updates)).build();

  _$InstrumentCode._({required this.instrumentCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instrumentCode, 'InstrumentCode', 'instrumentCode');
  }

  @override
  InstrumentCode rebuild(void Function(InstrumentCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstrumentCodeBuilder toBuilder() =>
      new InstrumentCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstrumentCode && instrumentCode == other.instrumentCode;
  }

  @override
  int get hashCode {
    return $jf($jc(0, instrumentCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InstrumentCode')
          ..add('instrumentCode', instrumentCode))
        .toString();
  }
}

class InstrumentCodeBuilder
    implements Builder<InstrumentCode, InstrumentCodeBuilder> {
  _$InstrumentCode? _$v;

  ListBuilder<String>? _instrumentCode;
  ListBuilder<String> get instrumentCode =>
      _$this._instrumentCode ??= new ListBuilder<String>();
  set instrumentCode(ListBuilder<String>? instrumentCode) =>
      _$this._instrumentCode = instrumentCode;

  InstrumentCodeBuilder();

  InstrumentCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instrumentCode = $v.instrumentCode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstrumentCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstrumentCode;
  }

  @override
  void update(void Function(InstrumentCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InstrumentCode build() {
    _$InstrumentCode _$result;
    try {
      _$result =
          _$v ?? new _$InstrumentCode._(instrumentCode: instrumentCode.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instrumentCode';
        instrumentCode.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InstrumentCode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
