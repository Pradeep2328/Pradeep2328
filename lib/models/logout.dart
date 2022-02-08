// logout.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library logout;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'logout.g.dart';

// {"device_serial_number":"123","manual_logout":true}

/// Logout
abstract class Logout implements Built<Logout, LogoutBuilder> {
  Logout._();

  factory Logout([Function(LogoutBuilder b) updates]) = _$Logout;

  @BuiltValueField(wireName: 'device_serial_number')
  String get deviceSerialNumber;

  @BuiltValueField(wireName: 'manual_logout')
  bool get manualLogout;

  String toJson() {
    return jsonEncode(serializers.serializeWith(Logout.serializer, this));
  }

  static Logout fromJson(String jsonString) {
    return serializers
        .deserializeWith(Logout.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b
          ..deviceSerialNumber ??= ''
          ..manualLogout ??= false);
  }

  static List<Logout> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Logout>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Logout> get serializer => _$logoutSerializer;
}
