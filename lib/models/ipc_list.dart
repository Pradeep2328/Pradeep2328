// ipc_list.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library ipc_list;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';
import 'package:built_collection/built_collection.dart';

part 'ipc_list.g.dart';

// {"IPC Code":"123","Tare Weight":"132kg"}

/// IpcList
abstract class IpcList implements Built<IpcList, IpcListBuilder> {
  IpcList._();

  factory IpcList([Function(IpcListBuilder b) updates]) = _$IpcList;

  @BuiltValueField(wireName: 'IPC Code')
  String get ipcCode;

  @BuiltValueField(wireName: 'Tare Weight')
  String get tareWeight;

  String toJson() {
    return jsonEncode(serializers.serializeWith(IpcList.serializer, this));
  }

  static IpcList? fromJson(String jsonString) {
    return serializers
        .deserializeWith(IpcList.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b
          ..ipcCode ??= ''
          ..tareWeight ??= '');
  }

  static List<IpcList> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<IpcList>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<IpcList> get serializer => _$ipcListSerializer;
}
