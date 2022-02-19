// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCodeApiModel _$$_ProductCodeApiModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductCodeApiModel(
      name: json['name'] as String,
      code: json['code'] as String,
      productCodeList: (json['msg'] as List<dynamic>)
          .map((e) => ProductCodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ProductCodeApiModelToJson(
        _$_ProductCodeApiModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'msg': instance.productCodeList.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };
