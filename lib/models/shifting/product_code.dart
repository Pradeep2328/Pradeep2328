import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:equatable/equatable.dart';

@immutable
class ProductCodeModel extends Equatable {
  final String id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  const ProductCodeModel({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  factory ProductCodeModel.fromJson(Map<String, dynamic> json) {
    return ProductCodeModel(
      id: json["id"],
      createdAt: json["createdAt"] = DateTime.parse(json["createdAt"]),
      name: json["name"],
      avatar: json["avatar"],
    );
  }

  static List<ProductCodeModel> fromJsonList(List list) {
    return list.map((item) => ProductCodeModel.fromJson(item)).toList();
  }

  ///this method will prevent the override of toString
  String userAsString() {
    return '#$id $name';
  }

  ///this method will prevent the override of toString
  bool userFilterByCreationDate(String filter) {
    return createdAt.toString().contains(filter);
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(ProductCodeModel model) {
    return id == model.id;
  }

  @override
  String toString() => name;

  @override
  List<Object?> get props => [id, name];

  static List<String> productCodes(Response<dynamic> response) {
    var models = ProductCodeModel.fromJsonList(response.data);
    var productCodes =
        models.map((ProductCodeModel product) => product.name).toList();
    return productCodes;
  }
}
