// import 'package:json_annotation/json_annotation.dart';

// part 'resource_error.g.dart';

// @JsonSerializable()
// class ResourceError {
//   final String type;
//   final String message;

//   ResourceError(this.type, this.message);

//   static const fromJsonFactory = _$ResourceErrorFromJson;

//   Map<String, dynamic> toJson() => _$ResourceErrorToJson(this);
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_error.freezed.dart';
part 'resource_error.g.dart';

/*
{
  "name": "/GRAN_INTER/BatchSetting/getBatchOnProduct",
  "code": "500",
  "msg": [
      {
          "message": "\"prod_code\" is required",
          "path": [
              "prod_code"
          ],
          "type": "any.required",
          "context": {
              "label": "prod_code",
              "key": "prod_code"
          }
      }
  ],
  "status": "fail"
}
*/

@freezed
class JsonErrorResponse with _$JsonErrorResponse {
  factory JsonErrorResponse({
    @JsonKey(name: 'msg') required List<ErrorMessage> message,
  }) = _JsonErrorResponse;

  factory JsonErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$JsonErrorResponseFromJson(json);

  static const fromJsonFactory = _$JsonErrorResponseFromJson;
}

@freezed
class ErrorMessage with _$ErrorMessage {
  factory ErrorMessage({
    @JsonKey(name: 'message') required String message,
  }) = _ErrorMessage;

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageFromJson(json);

  static const fromJsonFactory = _$ErrorMessageFromJson;
}
