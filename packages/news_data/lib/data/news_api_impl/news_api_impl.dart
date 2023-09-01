import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_data/domain/api/news_api/news_api.dart';
import 'package:news_data/domain/models/article/article.dart';

class NewsApiImpl implements NewsApi {
  NewsApiImpl({required this.apiKey, http.Client? httpClient}) : _httpClient = httpClient ?? http.Client();

  final String apiKey;
  final http.Client _httpClient;
  static const _baseUrl = "newsapi.org";
  static const _version = "/v2";

  @override
  Future<List<Article>> getArticles() async {
    final request = Uri.https(
      _baseUrl,
      '$_version/top-headlines',
      <String, String>{'apiKey': apiKey, 'country': 'us'},
    );
    final response = await _httpClient.get(request);
    return _handleArticlesResponse(response);
  }

  List<Article> _handleArticlesResponse(http.Response response) {
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(response.body);
      if (responseJson['status'] == 'ok') {
        final articlesJson = responseJson['articles'] as List<dynamic>;
        return articlesJson
            .map((e) => Article.fromJson(e as Map<String, dynamic>))
            .where((a) => a.title.isNotEmpty)
            .toList();
      }
    }

    throw ArticlesRequestExeption();
  }
}
