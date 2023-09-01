import 'package:news_data/domain/models/models.dart';

class ArticlesRequestExeption implements Exception {}

abstract class NewsApi {
  Future<List<Article>> getArticles();
}
