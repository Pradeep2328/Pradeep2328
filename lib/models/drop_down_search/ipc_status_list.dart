// ipc_status_list.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library ipc_status_list;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'ipc_status_list.g.dart';

// {"ipc_status":["123","asb"]}

/// IpcStatusList
abstract class IpcStatusList
    implements Built<IpcStatusList, IpcStatusListBuilder> {
  IpcStatusList._();

  factory IpcStatusList([Function(IpcStatusListBuilder b) updates]) =
      _$IpcStatusList;

  @BuiltValueField(wireName: 'ipc_status')
  BuiltList<String> get ipcStatus;

  String toJson() {
    return jsonEncode(
        serializers.serializeWith(IpcStatusList.serializer, this));
  }

  static IpcStatusList fromJson(String jsonString) {
    return serializers
        .deserializeWith(IpcStatusList.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..ipcStatus);
  }

  static List<IpcStatusList> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<IpcStatusList>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<IpcStatusList> get serializer => _$ipcStatusListSerializer;
}
