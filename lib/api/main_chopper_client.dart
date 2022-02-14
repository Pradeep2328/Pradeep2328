import 'package:chopper/chopper.dart';
import 'package:granulation/common/global.dart';
import 'package:granulation/api/authentication.dart';

class MainChopperClient {
  //static ChopperClient createChopperClient() {
  static final client = ChopperClient(
    baseUrl: ServerAddress.serverUri,
    interceptors: [
      const HeadersInterceptor({
        'Content-Type': 'application/json; charset=UTF-8',
        'Cache-Control': 'no-cache'
      }),
      HttpLoggingInterceptor(),
    ],
    services: [
      AuthenticationService.create(),
    ],
    converter: const JsonConverter(),
    errorConverter: const JsonConverter(),
  );
  //return client;
  //}
}

// class BuiltValueConverter extends JsonConverter{
//   @override
//   Request conver
// }