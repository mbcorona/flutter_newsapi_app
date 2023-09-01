import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    @Default('') String title,
    @Default('') String urlToImage,
    @Default('') String description,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) => _$ArticleFromJson(json);
}
