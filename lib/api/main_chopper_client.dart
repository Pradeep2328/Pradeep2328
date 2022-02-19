import 'package:chopper/chopper.dart';
import 'package:granulation/api/resource_error.dart';
import 'package:granulation/common/global.dart';
import 'package:granulation/api/authentication.dart';
import 'package:granulation/api/dropdown_searchable_list.dart';
import 'package:granulation/models/authentication.dart';

class MainChopperClient {
  static final client = ChopperClient(
    baseUrl: ServerConfiguration.serverUri,
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
    ],
    // converter: const JsonConverter(),
    // errorConverter: const JsonConverter(),

    // LoginRequest: LoginRequest.fromJson,
    converter: const JsonSerializableConverter(
      factories: {
        LoginRequest: LoginRequest.fromJsonFactory,
      },
    ),
  );
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonSerializableConverter extends JsonConverter {
  final Map<Type, JsonFactory> factories;

  const JsonSerializableConverter({required this.factories});

  T? _decodeMap<T>(Map<String, dynamic> values) {
    /// Get jsonFactory using Type parameters
    /// if not found or invalid, throw error or return null
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      print(jsonFactory.toString());
      print(JsonFactory<T>);
      return null;
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(List values) =>
      values.where((v) => v != null).map<T>((v) => _decode<T>(v)).toList();

  dynamic _decode<T>(entity) {
    if (entity is Iterable) return _decodeList<T>(entity.toList());

    if (entity is Map) return _decodeMap<T>(entity as Map<String, dynamic>);

    return entity;
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertResponse(response);

    return jsonRes.copyWith<ResultType>(body: _decode<Item>(jsonRes.body));
  }

  @override
  // all objects should implements toJson method
  Request convertRequest(Request request) => super.convertRequest(request);

  Response convertError<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertError(response);

    return jsonRes.copyWith<ResourceError>(
      body: ResourceError.fromJsonFactory(jsonRes.body),
    );
  }
}
