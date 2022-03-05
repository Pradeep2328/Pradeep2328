// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthenticationServices extends AuthenticationServices {
  _$AuthenticationServices([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthenticationServices;

  @override
  Future<Response<LoginRequest>> login(Map<String, dynamic> body) {
    final $url = '/authentication/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LoginRequest, LoginRequest>($request);
  }

  @override
  Future<Response<dynamic>> logout(Map<String, dynamic> body) {
    final $url = '/authentication/logout';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
