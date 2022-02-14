import 'package:json_annotation/json_annotation.dart';
/*
  "user_id": "adb",
  "password": "pwd",
  "device_serial_number": "123",
*/
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'device_serial_number')
  final String deviceSerialNumber;

  LoginRequest({
    required this.userId,
    required this.password,
    required this.deviceSerialNumber,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
