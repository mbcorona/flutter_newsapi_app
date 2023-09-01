import 'dart:convert';

import 'package:news_data/news_data.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../fake_data.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('news_api_impl', () {
    final fakeApiKey = 'FakeAPi';
    late http.Client httpClient;
    late NewsApi newsApi;

    setUp(() {
      httpClient = MockHttpClient();
      newsApi = NewsApiImpl(apiKey: fakeApiKey, httpClient: httpClient);
      registerFallbackValue(FakeUri());
    });

    test('constructor does not need an http client', () async {
      expect(NewsApiImpl(apiKey: fakeApiKey), isNotNull);
    });

    group('Get all articles', () {
      test('Returns List<Article> when status response is 200', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(jsonEncode(fakeGetArticlesResponse));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final articles = await newsApi.getArticles();

        expect(
          articles,
          isA<List<Article>>()
              .having((articles) => articles.first.title, 'title', fakeArticles.first.title)
              .having((articles) => articles.first.description, 'description', fakeArticles.first.description)
              .having((articles) => articles.first.urlToImage, 'urlToImage', fakeArticles.first.urlToImage),
        );
      });

      test('throws ArticlesRequestExeption when status response is different than 200', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(503);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => await newsApi.getArticles(),
          throwsA(isA<ArticlesRequestExeption>()),
        );
      });
    });
  });
}
