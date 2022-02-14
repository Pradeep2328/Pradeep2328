// GENERATED CODE - DO NOT MODIFY BY HAND

part of material_sifted;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialSifted> _$materialSiftedSerializer =
    new _$MaterialSiftedSerializer();

class _$MaterialSiftedSerializer
    implements StructuredSerializer<MaterialSifted> {
  @override
  final Iterable<Type> types = const [MaterialSifted, _$MaterialSifted];
  @override
  final String wireName = 'MaterialSifted';

  @override
  Iterable<Object?> serialize(Serializers serializers, MaterialSifted object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'materials_sifted',
      serializers.serialize(object.materialsSifted,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  MaterialSifted deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialSiftedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'materials_sifted':
          result.materialsSifted.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$MaterialSifted extends MaterialSifted {
  @override
  final BuiltList<String> materialsSifted;

  factory _$MaterialSifted([void Function(MaterialSiftedBuilder)? updates]) =>
      (new MaterialSiftedBuilder()..update(updates)).build();

  _$MaterialSifted._({required this.materialsSifted}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        materialsSifted, 'MaterialSifted', 'materialsSifted');
  }

  @override
  MaterialSifted rebuild(void Function(MaterialSiftedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialSiftedBuilder toBuilder() =>
      new MaterialSiftedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialSifted && materialsSifted == other.materialsSifted;
  }

  @override
  int get hashCode {
    return $jf($jc(0, materialsSifted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MaterialSifted')
          ..add('materialsSifted', materialsSifted))
        .toString();
  }
}

class MaterialSiftedBuilder
    implements Builder<MaterialSifted, MaterialSiftedBuilder> {
  _$MaterialSifted? _$v;

  ListBuilder<String>? _materialsSifted;
  ListBuilder<String> get materialsSifted =>
      _$this._materialsSifted ??= new ListBuilder<String>();
  set materialsSifted(ListBuilder<String>? materialsSifted) =>
      _$this._materialsSifted = materialsSifted;

  MaterialSiftedBuilder();

  MaterialSiftedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _materialsSifted = $v.materialsSifted.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialSifted other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialSifted;
  }

  @override
  void update(void Function(MaterialSiftedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MaterialSifted build() {
    _$MaterialSifted _$result;
    try {
      _$result = _$v ??
          new _$MaterialSifted._(materialsSifted: materialsSifted.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'materialsSifted';
        materialsSifted.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MaterialSifted', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
