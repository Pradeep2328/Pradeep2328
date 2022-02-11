// ipc_next_step.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library ipc_next_step;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'ipc_next_step.g.dart';

// {"ipc_next_step":["123","abc"]}

/// IpcNextStep
abstract class IpcNextStep implements Built<IpcNextStep, IpcNextStepBuilder> {
  IpcNextStep._();

  factory IpcNextStep([Function(IpcNextStepBuilder b) updates]) = _$IpcNextStep;

  @BuiltValueField(wireName: 'ipc_next_step')
  BuiltList<String> get ipcNextStep;

  String toJson() {
    return jsonEncode(serializers.serializeWith(IpcNextStep.serializer, this));
  }

  static IpcNextStep fromJson(String jsonString) {
    return serializers
        .deserializeWith(IpcNextStep.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..ipcNextStep);
  }

  static List<IpcNextStep> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<IpcNextStep>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<IpcNextStep> get serializer => _$ipcNextStepSerializer;
}
