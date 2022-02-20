// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_placeholder.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$JsonPlaceholderServices extends JsonPlaceholderServices {
  _$JsonPlaceholderServices([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = JsonPlaceholderServices;

  @override
  Future<Response<PostModel>> getPost({required int id}) {
    final $url = '/posts/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PostModel, PostModel>($request);
  }
}
