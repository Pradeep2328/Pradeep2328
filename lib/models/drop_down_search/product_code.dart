import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:granulation/presentation/model/product_code.dart';

part 'product_code.freezed.dart';
part 'product_code.g.dart';

@freezed
class ProductCodeApiModel with _$ProductCodeApiModel {
  factory ProductCodeApiModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'msg') required List<ProductCodeModel> productCodeList,
    @JsonKey(name: 'status') required String status,
  }) = _ProductCodeApiModel;

  factory ProductCodeApiModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCodeApiModelFromJson(json);
  //Map<String, dynamic> toJson() => _$ProductCodeApiModelToJson(this);
}
