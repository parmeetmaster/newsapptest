import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'news_home_screen_model.freezed.dart';
part 'news_home_screen_model.g.dart';

@freezed
class NewsHomeScreenModel with _$NewsHomeScreenModel {
  const factory NewsHomeScreenModel({
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "totalResults")
    int? totalResults,
    @JsonKey(name: "articles")
    List<Article>? articles,
  }) = _NewsHomeScreenModel;

  factory NewsHomeScreenModel.fromJson(Map<String, dynamic> json) => _$NewsHomeScreenModelFromJson(json);
}

@freezed
class Article with _$Article {
  const factory Article({
    @JsonKey(name: "source")
    Source? source,
    @JsonKey(name: "author")
    String? author,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "url")
    String? url,
    @JsonKey(name: "urlToImage")
    String? urlToImage,
    @JsonKey(name: "publishedAt")
    DateTime? publishedAt,
    @JsonKey(name: "content")
    String? content,
    String? showDate

  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "name")
    String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
