// GENERATED CODE - DO NOT MODIFY BY HAND

part of ipc_next_step;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpcNextStep> _$ipcNextStepSerializer = new _$IpcNextStepSerializer();

class _$IpcNextStepSerializer implements StructuredSerializer<IpcNextStep> {
  @override
  final Iterable<Type> types = const [IpcNextStep, _$IpcNextStep];
  @override
  final String wireName = 'IpcNextStep';

  @override
  Iterable<Object?> serialize(Serializers serializers, IpcNextStep object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ipc_next_step',
      serializers.serialize(object.ipcNextStep,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  IpcNextStep deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpcNextStepBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ipc_next_step':
          result.ipcNextStep.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$IpcNextStep extends IpcNextStep {
  @override
  final BuiltList<String> ipcNextStep;

  factory _$IpcNextStep([void Function(IpcNextStepBuilder)? updates]) =>
      (new IpcNextStepBuilder()..update(updates)).build();

  _$IpcNextStep._({required this.ipcNextStep}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ipcNextStep, 'IpcNextStep', 'ipcNextStep');
  }

  @override
  IpcNextStep rebuild(void Function(IpcNextStepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpcNextStepBuilder toBuilder() => new IpcNextStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpcNextStep && ipcNextStep == other.ipcNextStep;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ipcNextStep.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpcNextStep')
          ..add('ipcNextStep', ipcNextStep))
        .toString();
  }
}

class IpcNextStepBuilder implements Builder<IpcNextStep, IpcNextStepBuilder> {
  _$IpcNextStep? _$v;

  ListBuilder<String>? _ipcNextStep;
  ListBuilder<String> get ipcNextStep =>
      _$this._ipcNextStep ??= new ListBuilder<String>();
  set ipcNextStep(ListBuilder<String>? ipcNextStep) =>
      _$this._ipcNextStep = ipcNextStep;

  IpcNextStepBuilder();

  IpcNextStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipcNextStep = $v.ipcNextStep.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpcNextStep other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpcNextStep;
  }

  @override
  void update(void Function(IpcNextStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpcNextStep build() {
    _$IpcNextStep _$result;
    try {
      _$result = _$v ?? new _$IpcNextStep._(ipcNextStep: ipcNextStep.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipcNextStep';
        ipcNextStep.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IpcNextStep', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
