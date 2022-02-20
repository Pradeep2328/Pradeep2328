import 'package:chopper/chopper.dart';
import 'package:granulation/models/test_post.dart';

part 'json_placeholder.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class JsonPlaceholderServices extends ChopperService {
  @Get(path: '/posts/{id}')
  Future<Response<PostModel>> getPost({
    @Path('id') required int id,
  });

  static JsonPlaceholderServices create([ChopperClient? client]) =>
      _$JsonPlaceholderServices(client);
}
