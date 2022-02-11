// GENERATED CODE - DO NOT MODIFY BY HAND

part of ipc_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpcList> _$ipcListSerializer = new _$IpcListSerializer();

class _$IpcListSerializer implements StructuredSerializer<IpcList> {
  @override
  final Iterable<Type> types = const [IpcList, _$IpcList];
  @override
  final String wireName = 'IpcList';

  @override
  Iterable<Object?> serialize(Serializers serializers, IpcList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'IPC Code',
      serializers.serialize(object.ipcCode,
          specifiedType: const FullType(String)),
      'Tare Weight',
      serializers.serialize(object.tareWeight,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  IpcList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpcListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'IPC Code':
          result.ipcCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Tare Weight':
          result.tareWeight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IpcList extends IpcList {
  @override
  final String ipcCode;
  @override
  final String tareWeight;

  factory _$IpcList([void Function(IpcListBuilder)? updates]) =>
      (new IpcListBuilder()..update(updates)).build();

  _$IpcList._({required this.ipcCode, required this.tareWeight}) : super._() {
    BuiltValueNullFieldError.checkNotNull(ipcCode, 'IpcList', 'ipcCode');
    BuiltValueNullFieldError.checkNotNull(tareWeight, 'IpcList', 'tareWeight');
  }

  @override
  IpcList rebuild(void Function(IpcListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpcListBuilder toBuilder() => new IpcListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpcList &&
        ipcCode == other.ipcCode &&
        tareWeight == other.tareWeight;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ipcCode.hashCode), tareWeight.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpcList')
          ..add('ipcCode', ipcCode)
          ..add('tareWeight', tareWeight))
        .toString();
  }
}

class IpcListBuilder implements Builder<IpcList, IpcListBuilder> {
  _$IpcList? _$v;

  String? _ipcCode;
  String? get ipcCode => _$this._ipcCode;
  set ipcCode(String? ipcCode) => _$this._ipcCode = ipcCode;

  String? _tareWeight;
  String? get tareWeight => _$this._tareWeight;
  set tareWeight(String? tareWeight) => _$this._tareWeight = tareWeight;

  IpcListBuilder();

  IpcListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipcCode = $v.ipcCode;
      _tareWeight = $v.tareWeight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpcList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpcList;
  }

  @override
  void update(void Function(IpcListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpcList build() {
    final _$result = _$v ??
        new _$IpcList._(
            ipcCode: BuiltValueNullFieldError.checkNotNull(
                ipcCode, 'IpcList', 'ipcCode'),
            tareWeight: BuiltValueNullFieldError.checkNotNull(
                tareWeight, 'IpcList', 'tareWeight'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
