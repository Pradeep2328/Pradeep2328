// GENERATED CODE - DO NOT MODIFY BY HAND

part of ipc_status_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpcStatusList> _$ipcStatusListSerializer =
    new _$IpcStatusListSerializer();

class _$IpcStatusListSerializer implements StructuredSerializer<IpcStatusList> {
  @override
  final Iterable<Type> types = const [IpcStatusList, _$IpcStatusList];
  @override
  final String wireName = 'IpcStatusList';

  @override
  Iterable<Object?> serialize(Serializers serializers, IpcStatusList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ipc_status',
      serializers.serialize(object.ipcStatus,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  IpcStatusList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpcStatusListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ipc_status':
          result.ipcStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$IpcStatusList extends IpcStatusList {
  @override
  final BuiltList<String> ipcStatus;

  factory _$IpcStatusList([void Function(IpcStatusListBuilder)? updates]) =>
      (new IpcStatusListBuilder()..update(updates)).build();

  _$IpcStatusList._({required this.ipcStatus}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ipcStatus, 'IpcStatusList', 'ipcStatus');
  }

  @override
  IpcStatusList rebuild(void Function(IpcStatusListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpcStatusListBuilder toBuilder() => new IpcStatusListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpcStatusList && ipcStatus == other.ipcStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ipcStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpcStatusList')
          ..add('ipcStatus', ipcStatus))
        .toString();
  }
}

class IpcStatusListBuilder
    implements Builder<IpcStatusList, IpcStatusListBuilder> {
  _$IpcStatusList? _$v;

  ListBuilder<String>? _ipcStatus;
  ListBuilder<String> get ipcStatus =>
      _$this._ipcStatus ??= new ListBuilder<String>();
  set ipcStatus(ListBuilder<String>? ipcStatus) =>
      _$this._ipcStatus = ipcStatus;

  IpcStatusListBuilder();

  IpcStatusListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipcStatus = $v.ipcStatus.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpcStatusList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpcStatusList;
  }

  @override
  void update(void Function(IpcStatusListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpcStatusList build() {
    _$IpcStatusList _$result;
    try {
      _$result = _$v ?? new _$IpcStatusList._(ipcStatus: ipcStatus.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipcStatus';
        ipcStatus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IpcStatusList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
