import 'package:freezed_annotation/freezed_annotation.dart';

//part 'authentication.freezed.dart';
part 'product_code.g.dart';

// * ------------------------------------------------------------------------
// *
// * Login Request
/*
  "user_id": "adb",
  "password": "pwd",
  "device_serial_number": "123",
*/

// @freezed
// class LoginRequest with _$LoginRequest {
//   const factory LoginRequest({
//     @JsonKey(name: 'user_id') required String userId,
//     @JsonKey(name: 'password') required String password,
//     @JsonKey(name: 'device_serial_number') required String deviceSerialNumber,
//   }) = _LoginRequest;

//   static fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson;
// }

@JsonSerializable()
class ProductCode {
  @JsonKey(name: 'prod_code')
  final String prodcode;

  ProductCode({
    required this.prodcode,
  });

  // static fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson;
  static const fromJsonFactory = _$ProductCodeFromJson;

  Map<String, dynamic> toJson() => _$ProductCodeToJson(this);
}

// * ------------------------------------------------------------------------
// *
// * Login Response Data
// @freezed
// class LoginResponseData with _$LoginResponseData {
//   const factory LoginResponseData({
//     @JsonKey(name: 'user_id') required String userId,
//     @JsonKey(name: 'password') required String password,
//     @JsonKey(name: 'device_serial_number') required String deviceSerialNumber,
//   }) = _LoginResponseData;

//   static fromJson(Map<String, dynamic> json) =>
//       _$LoginResponseDataFromJson(json);

//   // Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);
// }

// * ------------------------------------------------------------------------
// *
// * Login Response
/*
{
  "data": {
    "user_id": "kbin",
    "password": "hvub",
    "device_serial_number": "abc"
  },
  "msg": "login Succesfull"
}
*/

// @freezed
// class LoginResponse with _$LoginResponse {
//   const factory LoginResponse({
//     @JsonKey(name: 'msg') required String msg,
//     @JsonKey(name: 'data') required LoginResponseData data,
//   }) = _LoginResponse;

//   static fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
// }



// // * ------------------------------------------------------------------------
// // *
// // * Logout Request
// /*
//   "user_id": "adb",
//   "device_serial_number": "123",
// */
// @freezed
// class LogoutRequest with _$LogoutRequest {
//   const factory LogoutRequest({
//     @JsonKey(name: 'user_id') required String userId,
//     @JsonKey(name: 'device_serial_number') required String deviceSerialNumber,
//   }) = _LogoutRequest;

//   factory LogoutRequest.fromJson(Map<String, dynamic> json) =>
//       _$LogoutRequestFromJson(json);
// }

// // * ------------------------------------------------------------------------
// // *
// // * Logout Response
// /*
//   "user_id": "adb",
//   "device_serial_number": "123",
// */
// @freezed
// class LogoutResponse with _$LogoutResponse {
//   const factory LogoutResponse({
//     @JsonKey(name: 'user_id') required String userId,
//     @JsonKey(name: 'device_serial_number') required String deviceSerialNumber,
//     @JsonKey(name: 'status') required String status,
//   }) = _LogoutResponse;

//   factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
//       _$LogoutResponseFromJson(json);
// }
