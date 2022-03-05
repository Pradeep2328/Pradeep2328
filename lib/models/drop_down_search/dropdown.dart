import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown.freezed.dart';
part 'dropdown.g.dart';

@freezed
class AreaResponse with _$AreaResponse {
  factory AreaResponse(
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'code') String returnCode,
    @JsonKey(name: 'msg') List<AreaModel> message,
    @JsonKey(name: 'status') String status,
  ) = _AreaResponse;

  factory AreaResponse.fromJson(Map<String, dynamic> json) =>
      _$AreaResponseFromJson(json);

  static const fromJsonFactory = _$AreaResponseFromJson;
}

@freezed
class AreaModel with _$AreaModel {
  factory AreaModel({@JsonKey(name: 'areaName') required String areaName}) =
      _AreaModel;

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);

  static const fromJsonFactory = _$AreaModelFromJson;
}

@freezed
class BatchNumberRequest with _$BatchNumberRequest {
  factory BatchNumberRequest({
    @JsonKey(name: 'prod_code') required String productCode,
  }) = _BatchNumberRequest;

  factory BatchNumberRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchNumberRequestFromJson(json);
  // Not needed as it is used only in request
  //static const fromJsonFactory = _$BatchNumberModelFromJson;
}

@freezed
class BatchNumberResponse with _$BatchNumberResponse {
  factory BatchNumberResponse({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String returnCode,
    @JsonKey(name: 'msg') required List<BatchNumberModel> message,
    @JsonKey(name: 'status') required String status,
  }) = _BatchNumberResponse;

  factory BatchNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$BatchNumberResponseFromJson(json);

  static const fromJsonFactory = _$BatchNumberResponseFromJson;
}

@freezed
class BatchNumberModel with _$BatchNumberModel {
  factory BatchNumberModel(
          {@JsonKey(name: 'batch_no') required String batchNumber}) =
      _BatchNumberModel;

  factory BatchNumberModel.fromJson(Map<String, dynamic> json) =>
      _$BatchNumberModelFromJson(json);

  static const fromJsonFactory = _$BatchNumberModelFromJson;
}

@freezed
class InstrumentCodeResponse with _$InstrumentCodeResponse {
  factory InstrumentCodeResponse({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String returnCode,
    @JsonKey(name: 'msg') required List<InstrumentCodeModel> message,
    @JsonKey(name: 'status') required String status,
  }) = _InstrumentCodeResponse;

  factory InstrumentCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$InstrumentCodeResponseFromJson(json);

  static const fromJsonFactory = _$InstrumentCodeResponseFromJson;
}

@freezed
class InstrumentCodeModel with _$InstrumentCodeModel {
  factory InstrumentCodeModel(
          {@JsonKey(name: 'instruCodeNo') required String instrumentCodeNo}) =
      _InstrumentCodeModel;

  factory InstrumentCodeModel.fromJson(Map<String, dynamic> json) =>
      _$InstrumentCodeModelFromJson(json);

  static const fromJsonFactory = _$InstrumentCodeModelFromJson;
}

@freezed
class InstrumentTypeResponse with _$InstrumentTypeResponse {
  factory InstrumentTypeResponse({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String returnCode,
    @JsonKey(name: 'msg') required List<InstrumentTypeModel> message,
    @JsonKey(name: 'status') required String status,
  }) = _InstrumentTypeResponse;

  factory InstrumentTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$InstrumentTypeResponseFromJson(json);

  static const fromJsonFactory = _$InstrumentTypeResponseFromJson;
}

@freezed
class InstrumentTypeModel with _$InstrumentTypeModel {
  factory InstrumentTypeModel(
          {@JsonKey(name: 'instruType') required String instrumentType}) =
      _InstrumentTypeModel;

  factory InstrumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$InstrumentTypeModelFromJson(json);

  static const fromJsonFactory = _$InstrumentTypeModelFromJson;
}

@freezed
class ProductCodeResponse with _$ProductCodeResponse {
  factory ProductCodeResponse({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String returnCode,
    @JsonKey(name: 'msg') required List<ProductCodeModel> message,
    @JsonKey(name: 'status') required String status,
  }) = _ProductCodeResponse;

  factory ProductCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCodeResponseFromJson(json);

  static const fromJsonFactory = _$ProductCodeResponseFromJson;
}

@freezed
class ProductCodeModel with _$ProductCodeModel {
  factory ProductCodeModel(
          {@JsonKey(name: 'prod_code') required String productCode}) =
      _ProductCodeModel;

  factory ProductCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCodeModelFromJson(json);

  static const fromJsonFactory = _$ProductCodeModelFromJson;
}

@freezed
class ProductDetailsResponse with _$ProductDetailsResponse {
  factory ProductDetailsResponse({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String returnCode,
    @JsonKey(name: 'msg') required List<ProductDetailModel> message,
    @JsonKey(name: 'status') required String status,
  }) = _ProductDetailsResponse;

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);

  static const fromJsonFactory = _$ProductDetailsResponseFromJson;
}

@freezed
class ProductDetailModel with _$ProductDetailModel {
  factory ProductDetailModel(
          {@JsonKey(name: 'ProdType') required String productType,
          @JsonKey(name: 'prod_name') required String productName,
          @JsonKey(name: 'prodVersion') required String productVersion,
          @JsonKey(name: 'version') required String version,
          @JsonKey(name: 'BMR') required String bmr,
          @JsonKey(name: 'BMRVersion') required String bmrVersion}) =
      _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);

  static const fromJsonFactory = _$ProductDetailModelFromJson;
}

@freezed
class RoomResponse with _$RoomResponse {
  factory RoomResponse({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String returnCode,
    @JsonKey(name: 'msg') required List<RoomModel> message,
    @JsonKey(name: 'status') required String status,
  }) = _RoomResponse;

  factory RoomResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomResponseFromJson(json);

  static const fromJsonFactory = _$RoomResponseFromJson;
}

@freezed
class RoomModel with _$RoomModel {
  factory RoomModel({@JsonKey(name: 'roomName') required String roomName}) =
      _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  static const fromJsonFactory = _$RoomModelFromJson;
}

@freezed
class StageResponse with _$StageResponse {
  factory StageResponse(
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'code') String returnCode,
    @JsonKey(name: 'msg') List<StageModel> message,
    @JsonKey(name: 'status') String status,
  ) = _StageResponse;

  factory StageResponse.fromJson(Map<String, dynamic> json) =>
      _$StageResponseFromJson(json);

  static const fromJsonFactory = _$StageResponseFromJson;
}

@freezed
class StageModel with _$StageModel {
  factory StageModel({@JsonKey(name: 'stage') required String stage}) =
      _StageModel;

  factory StageModel.fromJson(Map<String, dynamic> json) =>
      _$StageModelFromJson(json);

  static const fromJsonFactory = _$StageModelFromJson;
}

