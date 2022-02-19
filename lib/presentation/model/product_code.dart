import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_code.freezed.dart';
part 'product_code.g.dart';

@freezed
class ProductCodeModel with _$ProductCodeModel {
  factory ProductCodeModel({
    @JsonKey(name: 'prod_code') required String productCode,
  }) = _ProductCodeModel;

  factory ProductCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCodeModelFromJson(json);
}
