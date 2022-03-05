// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AreaResponse _$$_AreaResponseFromJson(Map<String, dynamic> json) =>
    _$_AreaResponse(
      json['name'] as String,
      json['code'] as String,
      (json['msg'] as List<dynamic>)
          .map((e) => AreaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
    );

Map<String, dynamic> _$$_AreaResponseToJson(_$_AreaResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_AreaModel _$$_AreaModelFromJson(Map<String, dynamic> json) => _$_AreaModel(
      areaName: json['areaName'] as String,
    );

Map<String, dynamic> _$$_AreaModelToJson(_$_AreaModel instance) =>
    <String, dynamic>{
      'areaName': instance.areaName,
    };

_$_BatchNumberRequest _$$_BatchNumberRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BatchNumberRequest(
      productCode: json['prod_code'] as String,
    );

Map<String, dynamic> _$$_BatchNumberRequestToJson(
        _$_BatchNumberRequest instance) =>
    <String, dynamic>{
      'prod_code': instance.productCode,
    };

_$_BatchNumberResponse _$$_BatchNumberResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BatchNumberResponse(
      name: json['name'] as String,
      returnCode: json['code'] as String,
      message: (json['msg'] as List<dynamic>)
          .map((e) => BatchNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_BatchNumberResponseToJson(
        _$_BatchNumberResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_BatchNumberModel _$$_BatchNumberModelFromJson(Map<String, dynamic> json) =>
    _$_BatchNumberModel(
      batchNumber: json['batch_no'] as String,
    );

Map<String, dynamic> _$$_BatchNumberModelToJson(_$_BatchNumberModel instance) =>
    <String, dynamic>{
      'batch_no': instance.batchNumber,
    };

_$_InstrumentCodeResponse _$$_InstrumentCodeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_InstrumentCodeResponse(
      name: json['name'] as String,
      returnCode: json['code'] as String,
      message: (json['msg'] as List<dynamic>)
          .map((e) => InstrumentCodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_InstrumentCodeResponseToJson(
        _$_InstrumentCodeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_InstrumentCodeModel _$$_InstrumentCodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_InstrumentCodeModel(
      instrumentCodeNo: json['instruCodeNo'] as String,
    );

Map<String, dynamic> _$$_InstrumentCodeModelToJson(
        _$_InstrumentCodeModel instance) =>
    <String, dynamic>{
      'instruCodeNo': instance.instrumentCodeNo,
    };

_$_InstrumentTypeResponse _$$_InstrumentTypeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_InstrumentTypeResponse(
      name: json['name'] as String,
      returnCode: json['code'] as String,
      message: (json['msg'] as List<dynamic>)
          .map((e) => InstrumentTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_InstrumentTypeResponseToJson(
        _$_InstrumentTypeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_InstrumentTypeModel _$$_InstrumentTypeModelFromJson(
        Map<String, dynamic> json) =>
    _$_InstrumentTypeModel(
      instrumentType: json['instruType'] as String,
    );

Map<String, dynamic> _$$_InstrumentTypeModelToJson(
        _$_InstrumentTypeModel instance) =>
    <String, dynamic>{
      'instruType': instance.instrumentType,
    };

_$_ProductCodeResponse _$$_ProductCodeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductCodeResponse(
      name: json['name'] as String,
      returnCode: json['code'] as String,
      message: (json['msg'] as List<dynamic>)
          .map((e) => ProductCodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ProductCodeResponseToJson(
        _$_ProductCodeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_ProductCodeModel _$$_ProductCodeModelFromJson(Map<String, dynamic> json) =>
    _$_ProductCodeModel(
      productCode: json['prod_code'] as String,
    );

Map<String, dynamic> _$$_ProductCodeModelToJson(_$_ProductCodeModel instance) =>
    <String, dynamic>{
      'prod_code': instance.productCode,
    };

_$_ProductDetailsResponse _$$_ProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsResponse(
      name: json['name'] as String,
      returnCode: json['code'] as String,
      message: (json['msg'] as List<dynamic>)
          .map((e) => ProductDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ProductDetailsResponseToJson(
        _$_ProductDetailsResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_ProductDetailModel _$$_ProductDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailModel(
      productType: json['ProdType'] as String,
      productName: json['prod_name'] as String,
      productVersion: json['prodVersion'] as String,
      version: json['version'] as String,
      bmr: json['BMR'] as String,
      bmrVersion: json['BMRVersion'] as String,
    );

Map<String, dynamic> _$$_ProductDetailModelToJson(
        _$_ProductDetailModel instance) =>
    <String, dynamic>{
      'ProdType': instance.productType,
      'prod_name': instance.productName,
      'prodVersion': instance.productVersion,
      'version': instance.version,
      'BMR': instance.bmr,
      'BMRVersion': instance.bmrVersion,
    };

_$_RoomResponse _$$_RoomResponseFromJson(Map<String, dynamic> json) =>
    _$_RoomResponse(
      name: json['name'] as String,
      returnCode: json['code'] as String,
      message: (json['msg'] as List<dynamic>)
          .map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_RoomResponseToJson(_$_RoomResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_RoomModel _$$_RoomModelFromJson(Map<String, dynamic> json) => _$_RoomModel(
      roomName: json['roomName'] as String,
    );

Map<String, dynamic> _$$_RoomModelToJson(_$_RoomModel instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
    };

_$_StageResponse _$$_StageResponseFromJson(Map<String, dynamic> json) =>
    _$_StageResponse(
      json['name'] as String,
      json['code'] as String,
      (json['msg'] as List<dynamic>)
          .map((e) => StageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
    );

Map<String, dynamic> _$$_StageResponseToJson(_$_StageResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.returnCode,
      'msg': instance.message.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_StageModel _$$_StageModelFromJson(Map<String, dynamic> json) =>
    _$_StageModel(
      stage: json['stage'] as String,
    );

Map<String, dynamic> _$$_StageModelToJson(_$_StageModel instance) =>
    <String, dynamic>{
      'stage': instance.stage,
    };
