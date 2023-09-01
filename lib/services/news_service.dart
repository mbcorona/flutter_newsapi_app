import 'dart:async';
import 'dart:isolate';

import 'package:flutter_news_app/env/env.dart';
import 'package:news_data/news_data.dart';

abstract class NewsService {
  Future<void> activateArticlesFetcher(SendPort sendPort, {Duration duration = const Duration(hours: 1)});

  void dispose();
}

class NewsServiceImpl implements NewsService {
  NewsServiceImpl({NewsApi? newsApi}) : _newsApi = newsApi ?? NewsApiImpl(apiKey: Env.newsApiKey);
  final NewsApi _newsApi;
  late Isolate isolate;

  @override
  Future<void> activateArticlesFetcher(SendPort sendPort, {Duration duration = const Duration(hours: 1)}) async {
    final request = NewsServiceRequest(sendPort: sendPort, newsApi: _newsApi, duration: duration);
    isolate = await Isolate.spawn(_getArticlesPriodically, request);
  }

  @override
  void dispose() {
    isolate.kill();
  }

  static Future<void> _getArticlesPriodically(NewsServiceRequest request) async {
    final articles = await request.newsApi.getArticles();
    request.sendPort.send(articles);
    Timer.periodic(request.duration, (timer) async {
      final articles = await request.newsApi.getArticles();
      request.sendPort.send(articles);
    });
  }
}

class NewsServiceRequest {
  NewsServiceRequest({
    required this.sendPort,
    required this.newsApi,
    required this.duration,
  });
  final SendPort sendPort;
  final NewsApi newsApi;
  final Duration duration;
}
