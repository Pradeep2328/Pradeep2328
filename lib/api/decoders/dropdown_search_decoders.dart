import 'dart:convert';

import 'package:granulation/api/api_list.dart';
import 'package:granulation/common/resource_error.dart';
import '../../models/drop_down_search/dropdown.dart';

class CommonDropDownSearchJsonDecoder {
  static Future<List<String>> batchNumber(String? productCode) async {
    final batchNumber = BatchNumberRequest(
        productCode: productCode ??
            'Product Code NULL in CommonDropDownSearchJsonDecoder.batchNumber');
    final response = await ApiService.dropdownSearchService
        .getBatchNumber(body: batchNumber.toJson());

    if (response.isSuccessful) {
      final batchnumberResponse =
          BatchNumberResponse.fromJson(jsonDecode(response.bodyString));
      final batchNumberModelList = batchnumberResponse.message;
      final batchNumberStringList =
          batchNumberModelList.map((e) => e.batchNumber).toList();
      return batchNumberStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> getAreas(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getArea();

    if (response.isSuccessful) {
      final areaResponse =
          AreaResponse.fromJson(jsonDecode(response.bodyString));
      final areaModelList = areaResponse.message;
      final areaStringList = areaModelList.map((e) => e.areaName).toList();
      return areaStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> productCode(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getProductCodes();
    if (response.isSuccessful) {
      final productCodeResponse =
          ProductCodeResponse.fromJson(jsonDecode(response.bodyString));
      final productCodeModelList = productCodeResponse.message;
      final productCodeStringList =
          productCodeModelList.map((e) => e.productCode).toList();
      return productCodeStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> getInstrumentCode(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getInstruCode();

    if (response.isSuccessful) {
      final instrumentCodeResponse =
          InstrumentCodeResponse.fromJson(jsonDecode(response.bodyString));
      final instrumentCodeModelList = instrumentCodeResponse.message;
      final codeStringList =
          instrumentCodeModelList.map((e) => e.instrumentCodeNo).toList();
      return codeStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> getInstrumentType(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getInstruType();

    if (response.isSuccessful) {
      final instrumentTypeResponse =
          InstrumentTypeResponse.fromJson(jsonDecode(response.bodyString));
      final instrumentTypeModelList = instrumentTypeResponse.message;
      final typeStringList =
          instrumentTypeModelList.map((e) => e.instrumentType).toList();
      return typeStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> getProductDetails(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getProductCodes();
    if (response.isSuccessful) {
      final productDetailsResponse =
          ProductDetailsResponse.fromJson(jsonDecode(response.bodyString));
      final productDetailsModelList = productDetailsResponse.message;
      final areaStringList =
          productDetailsModelList.map((e) => e.productType).toList();
      return areaStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> getRoomNames(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getRoomName();
    if (response.isSuccessful) {
      final roomResponse =
          RoomResponse.fromJson(jsonDecode(response.bodyString));
      final roomModelList = roomResponse.message;
      final roomStringList = roomModelList.map((e) => e.roomName).toList();
      return roomStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }

  static Future<List<String>> getStageNames(String? plainText) async {
    final response = await ApiService.dropdownSearchService.getStage();
    if (response.isSuccessful) {
      final stageResponse =
          StageResponse.fromJson(jsonDecode(response.bodyString));
      final stageModelList = stageResponse.message;
      final stageStringList = stageModelList.map((e) => e.stage).toList();
      return stageStringList;
    } else {
      final errorResponse = response.error as JsonErrorResponse;
      final errorList = errorResponse.message;
      final productCodeErrorList = errorList.map((e) => e.message).toList();
      return productCodeErrorList;
    }
  }
}

class SiftingDropDownSearchJsonDecoder {}
