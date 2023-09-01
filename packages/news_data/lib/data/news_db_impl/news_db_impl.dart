import 'package:news_data/domain/local_db/news_local_db/news_local_db.dart';
import 'package:news_data/domain/models/article/article.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NewsDBImpl implements NewsDB {
  NewsDBImpl._(this._database);

  final DatabaseExecutor _database;
  static const String _articlesTable = 'articles';

  static Future<NewsDBImpl> create({DatabaseExecutor? database}) async {
    if (database != null) {
      return NewsDBImpl._(database);
    } else {
      final path = await getDatabasesPath();
      return NewsDBImpl._(
        await openDatabase(
          join(path, 'news_database.db'),
          onCreate: (db, version) {
            return db.execute(
              'CREATE TABLE $_articlesTable(id INTEGER PRIMARY KEY, title TEXT, description TEXT, urlToImage TEXT)',
            );
          },
          version: 1,
        ),
      );
    }
  }

  @override
  Future<void> addArticle(Article article) async {
    await _database.insert(_articlesTable, article.toJson());
  }

  @override
  Future<List<Article>> getArticles() async {
    final dbResponse = await _database.query(_articlesTable);
    return dbResponse.map((e) => Article.fromJson(e)).toList();
  }

  @override
  Future<void> removeArticle(Article article) async {
    await _database.delete(_articlesTable, where: 'title = ?', whereArgs: [article.title]);
  }

  @override
  Future<void> deleteAll() async {
    await _database.delete(_articlesTable);
  }
}
