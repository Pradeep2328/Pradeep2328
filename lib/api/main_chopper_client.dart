import 'package:chopper/chopper.dart';
import 'package:granulation/api/json_placeholder.dart';
import 'package:granulation/common/global.dart';
import 'package:granulation/api/authentication.dart';
import 'package:granulation/api/dropdown_searchable_list.dart';
import 'package:granulation/common/serializer_converter.dart';
import 'package:granulation/models/authentication.dart';
import 'package:granulation/models/test_post.dart';

final chopperClient = ChopperClient(
  baseUrl: 'https://jsonplaceholder.typicode.com',
  // baseUrl: ServerConfiguration.serverUri,
  interceptors: [
    const HeadersInterceptor({
      'Content-Type': 'application/json; charset=UTF-8',
      'Cache-Control': 'no-cache'
    }),
    HttpLoggingInterceptor(),
  ],
  services: [
    AuthenticationServices.create(),
    DropDownSearchableList.create(),
    JsonPlaceholderServices.create(),
  ],
  // LoginRequest: LoginRequest.fromJson,
  converter: const JsonSerializableConverter(
    factories: {
      // LoginRequest: LoginRequest.fromJsonFactory,
      PostModel: PostModel.fromJsonFactory
    },
  ),
);
