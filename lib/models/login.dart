// login.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library login;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'login.g.dart';

// {"user_name":"abc","password":"123","device_serial_number":"abc123"}

/// Login
abstract class Login implements Built<Login, LoginBuilder> {
  Login._();

  factory Login([Function(LoginBuilder b) updates]) = _$Login;

  @BuiltValueField(wireName: 'user_name')
  String get userName;

  @BuiltValueField(wireName: 'password')
  String get password;

  @BuiltValueField(wireName: 'device_serial_number')
  String get deviceSerialNumber;

  String toJson() {
    return jsonEncode(serializers.serializeWith(Login.serializer, this));
  }

  static Login fromJson(String jsonString) {
    return serializers
        .deserializeWith(Login.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b
          ..userName ??= ''
          ..password ??= ''
          ..deviceSerialNumber ??= '');
  }

  static List<Login> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Login>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Login> get serializer => _$loginSerializer;
}
