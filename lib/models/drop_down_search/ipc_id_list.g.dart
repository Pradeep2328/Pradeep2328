// GENERATED CODE - DO NOT MODIFY BY HAND

part of ipc_id_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpcIdList> _$ipcIdListSerializer = new _$IpcIdListSerializer();

class _$IpcIdListSerializer implements StructuredSerializer<IpcIdList> {
  @override
  final Iterable<Type> types = const [IpcIdList, _$IpcIdList];
  @override
  final String wireName = 'IpcIdList';

  @override
  Iterable<Object?> serialize(Serializers serializers, IpcIdList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ipc_id_list',
      serializers.serialize(object.ipcIdList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  IpcIdList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpcIdListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ipc_id_list':
          result.ipcIdList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$IpcIdList extends IpcIdList {
  @override
  final BuiltList<String> ipcIdList;

  factory _$IpcIdList([void Function(IpcIdListBuilder)? updates]) =>
      (new IpcIdListBuilder()..update(updates)).build();

  _$IpcIdList._({required this.ipcIdList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(ipcIdList, 'IpcIdList', 'ipcIdList');
  }

  @override
  IpcIdList rebuild(void Function(IpcIdListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpcIdListBuilder toBuilder() => new IpcIdListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpcIdList && ipcIdList == other.ipcIdList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ipcIdList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpcIdList')
          ..add('ipcIdList', ipcIdList))
        .toString();
  }
}

class IpcIdListBuilder implements Builder<IpcIdList, IpcIdListBuilder> {
  _$IpcIdList? _$v;

  ListBuilder<String>? _ipcIdList;
  ListBuilder<String> get ipcIdList =>
      _$this._ipcIdList ??= new ListBuilder<String>();
  set ipcIdList(ListBuilder<String>? ipcIdList) =>
      _$this._ipcIdList = ipcIdList;

  IpcIdListBuilder();

  IpcIdListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipcIdList = $v.ipcIdList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpcIdList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpcIdList;
  }

  @override
  void update(void Function(IpcIdListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpcIdList build() {
    _$IpcIdList _$result;
    try {
      _$result = _$v ?? new _$IpcIdList._(ipcIdList: ipcIdList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipcIdList';
        ipcIdList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IpcIdList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
