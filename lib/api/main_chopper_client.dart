import 'package:chopper/chopper.dart';
import 'package:granulation/api/api_services.dart';
import 'package:granulation/api/json_placeholder.dart';
import 'package:granulation/common/global.dart';
import 'package:granulation/api/authentication.dart';
import 'package:granulation/api/dropdown_searchable_list.dart';
import 'package:granulation/common/serializer_converter.dart';
import 'package:granulation/models/authentication.dart';
import 'package:granulation/models/drop_down_search/dropdown.dart';
import 'package:granulation/models/test_post.dart';

final chopperClient = ChopperClient(
  // baseUrl: 'https://jsonplaceholder.typicode.com',
  // baseUrl: ,
  baseUrl: ServerConfiguration.serverUri,
  interceptors: [
    const HeadersInterceptor({
      'Content-Type': 'application/json; charset=UTF-8',
      'Cache-Control': 'no-cache'
    }),
    HttpLoggingInterceptor(),
  ],
  services: apiServices,
  // LoginRequest: LoginRequest.fromJson,
  converter: const JsonSerializableConverter(
    factories: {
      // LoginRequest: LoginRequest.fromJsonFactory,
      PostModel: PostModel.fromJsonFactory,
      ProductCodeResponse: ProductCodeResponse.fromJsonFactory,
      BatchNumberResponse: BatchNumberResponse.fromJsonFactory,
      AreaResponse: AreaResponse.fromJsonFactory,
      RoomResponse: RoomResponse.fromJsonFactory,
      StageResponse: StageResponse.fromJsonFactory,
      ProductDetailsResponse: ProductDetailsResponse.fromJsonFactory,
      InstrumentCodeResponse: InstrumentCodeResponse.fromJsonFactory,
      InstrumentTypeResponse: InstrumentTypeResponse.fromJsonFactory
    },
  ),
);
