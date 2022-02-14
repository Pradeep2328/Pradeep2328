import 'package:chopper/chopper.dart';
import 'package:granulation/models/login_request.dart';
import 'package:granulation/models/login_response.dart';

part 'authentication.chopper.dart';

@ChopperApi(baseUrl: '/authentication')
abstract class AuthenticationService extends ChopperService {
  @Post(path: '/login')
  Future<Response> login(
    @Body() Map<String, dynamic> body,
  );

  static AuthenticationService create([ChopperClient? client]) =>
      _$AuthenticationService(client);
}
