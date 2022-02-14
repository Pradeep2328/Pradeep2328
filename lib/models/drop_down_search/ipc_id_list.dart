// ipc_id_list.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library ipc_id_list;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'ipc_id_list.g.dart';

// {"ipc_id_list":["123","abc"]}

/// IpcIdList
abstract class IpcIdList implements Built<IpcIdList, IpcIdListBuilder> {
  IpcIdList._();

  factory IpcIdList([Function(IpcIdListBuilder b) updates]) = _$IpcIdList;

  @BuiltValueField(wireName: 'ipc_id_list')
  BuiltList<String> get ipcIdList;

  String toJson() {
    return jsonEncode(serializers.serializeWith(IpcIdList.serializer, this));
  }

  static IpcIdList fromJson(String jsonString) {
    return serializers
        .deserializeWith(IpcIdList.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b..ipcIdList);
  }

  static List<IpcIdList> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<IpcIdList>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<IpcIdList> get serializer => _$ipcIdListSerializer;
}
