import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_code.freezed.dart';
part 'product_code.g.dart';

@freezed
class Productcode with _$Productcode {
  factory Productcode({@JsonKey(name: 'prod_code') required int userId}) =
      _Productcode;

  factory Productcode.fromJson(Map<String, dynamic> json) =>
      _$ProductcodeFromJson(json);

  static const fromJsonFactory = _$ProductcodeFromJson;
}
