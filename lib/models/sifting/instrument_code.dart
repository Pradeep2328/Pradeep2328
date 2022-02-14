// instrument_code.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library instrument_code;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'instrument_code.g.dart';

// {"instrument_code":["abc","123"]}

/// InstrumentCode
abstract class InstrumentCode
    implements Built<InstrumentCode, InstrumentCodeBuilder> {
  InstrumentCode._();

  factory InstrumentCode([Function(InstrumentCodeBuilder b) updates]) =
      _$InstrumentCode;

  @BuiltValueField(wireName: 'instrument_code')
  BuiltList<String> get instrumentCode;

  String toJson() {
    return jsonEncode(
        serializers.serializeWith(InstrumentCode.serializer, this));
  }

  static InstrumentCode fromJson(String jsonString) {
    return serializers
        .deserializeWith(InstrumentCode.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..instrumentCode);
  }

  static List<InstrumentCode> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<InstrumentCode>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<InstrumentCode> get serializer =>
      _$instrumentCodeSerializer;
}
