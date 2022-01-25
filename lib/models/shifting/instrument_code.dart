import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
class InstrumentCodeModel extends Equatable {
  final String instrumentCode;

  const InstrumentCodeModel({
    required this.instrumentCode,
  });

  factory InstrumentCodeModel.fromJson(Map<String, dynamic> json) {
    return InstrumentCodeModel(
      instrumentCode: json["instrumentCode"],
    );
  }

  static List<InstrumentCodeModel> fromJsonList(List list) {
    return list.map((item) => InstrumentCodeModel.fromJson(item)).toList();
  }

  ///this method will prevent the override of toString
  String instrumentCodeAsString() {
    return '#$instrumentCode';
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(InstrumentCodeModel model) {
    return instrumentCode == model.instrumentCode;
  }

  @override
  String toString() => instrumentCode;

  @override
  List<Object?> get props => [instrumentCode];

  static List<String> getInstrumentCodes(Response<dynamic> response) {
    var models = InstrumentCodeModel.fromJsonList(response.data);
    var instrumentCodes = models
        .map((InstrumentCodeModel instrument) => instrument.instrumentCode)
        .toList();
    return instrumentCodes;
  }
}
