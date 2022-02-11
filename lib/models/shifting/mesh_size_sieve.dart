// mesh_size_sieve.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library mesh_size_sieve;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'mesh_size_sieve.g.dart';

// {"mesh_size":["1798","6298"]}

/// MeshSizeSieve
abstract class MeshSizeSieve
    implements Built<MeshSizeSieve, MeshSizeSieveBuilder> {
  MeshSizeSieve._();

  factory MeshSizeSieve([Function(MeshSizeSieveBuilder b) updates]) =
      _$MeshSizeSieve;

  @BuiltValueField(wireName: 'mesh_size')
  BuiltList<String> get meshSize;

  String toJson() {
    return jsonEncode(
        serializers.serializeWith(MeshSizeSieve.serializer, this));
  }

  static MeshSizeSieve fromJson(String jsonString) {
    return serializers
        .deserializeWith(MeshSizeSieve.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..meshSize);
  }

  static List<MeshSizeSieve> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<MeshSizeSieve>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<MeshSizeSieve> get serializer => _$meshSizeSieveSerializer;
}
