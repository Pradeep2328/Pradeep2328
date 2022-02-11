// GENERATED CODE - DO NOT MODIFY BY HAND

part of date_time;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateTime> _$dateTimeSerializer = new _$DateTimeSerializer();

class _$DateTimeSerializer implements StructuredSerializer<DateTime> {
  @override
  final Iterable<Type> types = const [DateTime, _$DateTime];
  @override
  final String wireName = 'DateTime';

  @override
  Iterable<Object?> serialize(Serializers serializers, DateTime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DateTime deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateTimeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DateTime extends DateTime {
  @override
  final String date;
  @override
  final String time;

  factory _$DateTime([void Function(DateTimeBuilder)? updates]) =>
      (new DateTimeBuilder()..update(updates)).build();

  _$DateTime._({required this.date, required this.time}) : super._() {
    BuiltValueNullFieldError.checkNotNull(date, 'DateTime', 'date');
    BuiltValueNullFieldError.checkNotNull(time, 'DateTime', 'time');
  }

  @override
  DateTime rebuild(void Function(DateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateTimeBuilder toBuilder() => new DateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateTime && date == other.date && time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateTime')
          ..add('date', date)
          ..add('time', time))
        .toString();
  }
}

class DateTimeBuilder implements Builder<DateTime, DateTimeBuilder> {
  _$DateTime? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  DateTimeBuilder();

  DateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateTime;
  }

  @override
  void update(void Function(DateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateTime build() {
    final _$result = _$v ??
        new _$DateTime._(
            date:
                BuiltValueNullFieldError.checkNotNull(date, 'DateTime', 'date'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'DateTime', 'time'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
