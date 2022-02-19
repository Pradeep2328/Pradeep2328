import 'package:chopper/chopper.dart';
import 'package:granulation/common/urls.dart';
import 'package:granulation/models/authentication.dart';

part 'authentication.chopper.dart';

@ChopperApi(baseUrl: CommonUrl.authentication)
abstract class AuthenticationServices extends ChopperService {
  @Post(path: CommonUrl.login)
  Future<Response<LoginRequest>> login(
    // Future<Response> login(
    //Future<Response<LoginResponse>> login(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: '/logout')
  Future<Response> logout(
    @Body() Map<String, dynamic> body,
  );

  static AuthenticationServices create([ChopperClient? client]) =>
      _$AuthenticationServices(client);
}
