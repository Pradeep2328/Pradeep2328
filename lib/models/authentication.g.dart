// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      userId: json['user_id'] as String,
      password: json['password'] as String,
      deviceSerialNumber: json['device_serial_number'] as String,
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'password': instance.password,
      'device_serial_number': instance.deviceSerialNumber,
    };
