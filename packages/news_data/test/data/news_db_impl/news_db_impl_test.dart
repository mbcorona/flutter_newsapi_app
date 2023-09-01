import 'package:mocktail/mocktail.dart';
import 'package:news_data/domain/local_db/news_local_db/news_local_db.dart';
import 'package:news_data/news_data.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test/test.dart';

import '../fake_data.dart';

class MockDatabase extends Mock implements DatabaseExecutor {}

void main() {
  late DatabaseExecutor database;
  late NewsDB newsDB;
  group('news_db_impl', () {
    setUp(() async {
      database = MockDatabase();
      newsDB = await NewsDBImpl.create(database: database);
    });

    test('Creates a Database instamce correctly with custom DatabasExecutor', () async {
      expect(await NewsDBImpl.create(database: database), isNotNull);
    });

    group('Article operations', () {
      test('Get articles', () async {
        when(() => database.query(any())).thenAnswer((_) async => fakeArticlesJson);

        final dbArticles = await newsDB.getArticles();
        expect(
          dbArticles,
          isA<List<Article>>()
              .having((articles) => articles.first.title, 'title', fakeArticles.first.title)
              .having((articles) => articles.first.description, 'description', fakeArticles.first.description)
              .having((articles) => articles.first.urlToImage, 'urlToImage', fakeArticles.first.urlToImage),
        );
      });

      // TODO: Create tests for add, remove articles
    });
  });
}
