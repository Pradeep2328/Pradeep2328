// date_time.dart
// repo: https://github.com/januwA/p5_object_2_builtvalue
// generate: https://januwa.github.io/p5_object_2_builtvalue/index.html

library date_time;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:granulation/models/serializers.dart';

part 'date_time.g.dart';

// {"date":"21-02-2022","time":"17:36:56"}

/// DateTime
abstract class DateTime implements Built<DateTime, DateTimeBuilder> {
  DateTime._();

  factory DateTime([Function(DateTimeBuilder b) updates]) = _$DateTime;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'time')
  String get time;

  String toJson() {
    return jsonEncode(serializers.serializeWith(DateTime.serializer, this));
  }

  static DateTime fromJson(String jsonString) {
    return serializers
        .deserializeWith(DateTime.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b
          ..date ??= ''
          ..time ??= '');
  }

  static List<DateTime> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<DateTime>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<DateTime> get serializer => _$dateTimeSerializer;
}
