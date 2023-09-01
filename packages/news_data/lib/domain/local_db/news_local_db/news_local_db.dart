import 'package:news_data/domain/models/article/article.dart';

abstract class NewsDB {
  Future<void> addArticle(Article article);
  Future<void> removeArticle(Article article);
  Future<List<Article>> getArticles();
  Future<void> deleteAll();
}
