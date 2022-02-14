// product_code.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library product_code;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'product_code.g.dart';

// {"product_code":["abc","123"]}

/// ProductCode
abstract class ProductCode implements Built<ProductCode, ProductCodeBuilder> {
  ProductCode._();

  factory ProductCode([Function(ProductCodeBuilder b) updates]) = _$ProductCode;

  @BuiltValueField(wireName: 'product_code')
  BuiltList<String> get productCode;

  String toJson() {
    return jsonEncode(serializers.serializeWith(ProductCode.serializer, this));
  }

  static ProductCode fromJson(String jsonString) {
    return serializers
        .deserializeWith(ProductCode.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..productCode);
  }

  static List<ProductCode> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<ProductCode>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<ProductCode> get serializer => _$productCodeSerializer;
}
