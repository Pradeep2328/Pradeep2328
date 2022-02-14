// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_code;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductCode> _$productCodeSerializer = new _$ProductCodeSerializer();

class _$ProductCodeSerializer implements StructuredSerializer<ProductCode> {
  @override
  final Iterable<Type> types = const [ProductCode, _$ProductCode];
  @override
  final String wireName = 'ProductCode';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'product_code',
      serializers.serialize(object.productCode,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ProductCode deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductCodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'product_code':
          result.productCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductCode extends ProductCode {
  @override
  final BuiltList<String> productCode;

  factory _$ProductCode([void Function(ProductCodeBuilder)? updates]) =>
      (new ProductCodeBuilder()..update(updates)).build();

  _$ProductCode._({required this.productCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        productCode, 'ProductCode', 'productCode');
  }

  @override
  ProductCode rebuild(void Function(ProductCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCodeBuilder toBuilder() => new ProductCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCode && productCode == other.productCode;
  }

  @override
  int get hashCode {
    return $jf($jc(0, productCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductCode')
          ..add('productCode', productCode))
        .toString();
  }
}

class ProductCodeBuilder implements Builder<ProductCode, ProductCodeBuilder> {
  _$ProductCode? _$v;

  ListBuilder<String>? _productCode;
  ListBuilder<String> get productCode =>
      _$this._productCode ??= new ListBuilder<String>();
  set productCode(ListBuilder<String>? productCode) =>
      _$this._productCode = productCode;

  ProductCodeBuilder();

  ProductCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productCode = $v.productCode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductCode;
  }

  @override
  void update(void Function(ProductCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductCode build() {
    _$ProductCode _$result;
    try {
      _$result = _$v ?? new _$ProductCode._(productCode: productCode.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productCode';
        productCode.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductCode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
