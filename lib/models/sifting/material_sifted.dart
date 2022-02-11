// material_sifted.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library material_sifted;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'material_sifted.g.dart';

// {"materials_sifted":["123","abc"]}

/// MaterialSifted
abstract class MaterialSifted
    implements Built<MaterialSifted, MaterialSiftedBuilder> {
  MaterialSifted._();

  factory MaterialSifted([Function(MaterialSiftedBuilder b) updates]) =
      _$MaterialSifted;

  @BuiltValueField(wireName: 'materials_sifted')
  BuiltList<String> get materialsSifted;

  String toJson() {
    return jsonEncode(
        serializers.serializeWith(MaterialSifted.serializer, this));
  }

  static MaterialSifted fromJson(String jsonString) {
    return serializers
        .deserializeWith(MaterialSifted.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..materialsSifted ??= ListBuilder<String>());
  }

  static List<MaterialSifted> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<MaterialSifted>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<MaterialSifted> get serializer =>
      _$materialSiftedSerializer;
}
