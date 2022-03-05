// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_searchable_list.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$DropDownSearchableList extends DropDownSearchableList {
  _$DropDownSearchableList([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DropDownSearchableList;

  @override
  Future<Response<ProductCodeResponse>> getProductCodes() {
    final $url = '/GRAN_INTER/BatchSetting/getAllProductCode';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProductCodeResponse, ProductCodeResponse>($request);
  }

  @override
  Future<Response<ProductCodeResponse>> getPreviousProductCode() {
    final $url = '/GRAN_INTER/Product/getAllprevProductCode';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProductCodeResponse, ProductCodeResponse>($request);
  }

  @override
  Future<Response<BatchNumberResponse>> getBatchNumber(
      {required Map<String, dynamic> body}) {
    final $url = '/GRAN_INTER/BatchSetting/getBatchOnProduct';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BatchNumberResponse, BatchNumberResponse>($request);
  }

  @override
  Future<Response<AreaResponse>> getArea() {
    final $url = '/GRAN_INTER/AreaMaster/getAllArea';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AreaResponse, AreaResponse>($request);
  }

  @override
  Future<Response<RoomResponse>> getRoomName() {
    final $url = '/GRAN_INTER/AreaMaster/getAllRoomName';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoomResponse, RoomResponse>($request);
  }

  @override
  Future<Response<StageResponse>> getStage() {
    final $url = '/GRAN_INTER/AreaMaster/getAllStage';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<StageResponse, StageResponse>($request);
  }

  @override
  Future<Response<ProductDetailsResponse>> getProductDetails(
      Map<String, dynamic> body) {
    final $url = '/GRAN_INTER/Product/getProduct';
    final $body = body;
    final $request = Request('GET', $url, client.baseUrl, body: $body);
    return client
        .send<ProductDetailsResponse, ProductDetailsResponse>($request);
  }

  @override
  Future<Response<InstrumentTypeResponse>> getInstruType() {
    final $url = '/GRAN_INTER/AreaMaster/getAllInstruType';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<InstrumentTypeResponse, InstrumentTypeResponse>($request);
  }

  @override
  Future<Response<InstrumentCodeResponse>> getInstruCode() {
    final $url = '/GRAN_INTER/AreaMaster/getAllInstruCode';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<InstrumentCodeResponse, InstrumentCodeResponse>($request);
  }
}
