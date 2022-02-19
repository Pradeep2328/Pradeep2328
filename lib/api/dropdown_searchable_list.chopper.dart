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
  Future<Response<ProductCodeApiModel>> getProductCodes() {
    final $url = '/GRAN_INTER/BatchSetting/getAllProductCode';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProductCodeApiModel, ProductCodeApiModel>($request);
  }
}
