import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_post.freezed.dart';
part 'test_post.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  static const fromJsonFactory = _$PostModelFromJson;
}