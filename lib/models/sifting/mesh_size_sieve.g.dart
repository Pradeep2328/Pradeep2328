// GENERATED CODE - DO NOT MODIFY BY HAND

part of mesh_size_sieve;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeshSizeSieve> _$meshSizeSieveSerializer =
    new _$MeshSizeSieveSerializer();

class _$MeshSizeSieveSerializer implements StructuredSerializer<MeshSizeSieve> {
  @override
  final Iterable<Type> types = const [MeshSizeSieve, _$MeshSizeSieve];
  @override
  final String wireName = 'MeshSizeSieve';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeshSizeSieve object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mesh_size',
      serializers.serialize(object.meshSize,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  MeshSizeSieve deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeshSizeSieveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mesh_size':
          result.meshSize.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$MeshSizeSieve extends MeshSizeSieve {
  @override
  final BuiltList<String> meshSize;

  factory _$MeshSizeSieve([void Function(MeshSizeSieveBuilder)? updates]) =>
      (new MeshSizeSieveBuilder()..update(updates)).build();

  _$MeshSizeSieve._({required this.meshSize}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        meshSize, 'MeshSizeSieve', 'meshSize');
  }

  @override
  MeshSizeSieve rebuild(void Function(MeshSizeSieveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeshSizeSieveBuilder toBuilder() => new MeshSizeSieveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeshSizeSieve && meshSize == other.meshSize;
  }

  @override
  int get hashCode {
    return $jf($jc(0, meshSize.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MeshSizeSieve')
          ..add('meshSize', meshSize))
        .toString();
  }
}

class MeshSizeSieveBuilder
    implements Builder<MeshSizeSieve, MeshSizeSieveBuilder> {
  _$MeshSizeSieve? _$v;

  ListBuilder<String>? _meshSize;
  ListBuilder<String> get meshSize =>
      _$this._meshSize ??= new ListBuilder<String>();
  set meshSize(ListBuilder<String>? meshSize) => _$this._meshSize = meshSize;

  MeshSizeSieveBuilder();

  MeshSizeSieveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meshSize = $v.meshSize.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeshSizeSieve other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeshSizeSieve;
  }

  @override
  void update(void Function(MeshSizeSieveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MeshSizeSieve build() {
    _$MeshSizeSieve _$result;
    try {
      _$result = _$v ?? new _$MeshSizeSieve._(meshSize: meshSize.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meshSize';
        meshSize.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MeshSizeSieve', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
