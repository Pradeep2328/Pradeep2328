// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonErrorResponse _$$_JsonErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_JsonErrorResponse(
      message: (json['msg'] as List<dynamic>)
          .map((e) => ErrorMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JsonErrorResponseToJson(
        _$_JsonErrorResponse instance) =>
    <String, dynamic>{
      'msg': instance.message.map((e) => e.toJson()).toList(),
    };

_$_ErrorMessage _$$_ErrorMessageFromJson(Map<String, dynamic> json) =>
    _$_ErrorMessage(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorMessageToJson(_$_ErrorMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
