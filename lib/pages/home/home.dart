import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/blocs/favorites/favorites_bloc.dart';
import 'package:flutter_news_app/blocs/news/news_bloc.dart';
import 'package:flutter_news_app/pages/favorites/favorites_page.dart';
import 'package:flutter_news_app/services/news_service.dart';
import 'package:news_data/news_data.dart';

part 'widgets/article_card.dart';
part 'widgets/header_image.dart';
part 'widgets/news_page_view.dart';
part 'widgets/favorites_float_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.newsService});

  final NewsService newsService;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double headerSize;

  ReceivePort receivePort = ReceivePort();

  @override
  void initState() {
    super.initState();
    initNewsService();
  }

  void initNewsService() {
    widget.newsService.activateArticlesFetcher(receivePort.sendPort);
    receivePort.listen((articles) {
      context.read<NewsBloc>().add(NewsEvent.setArticles(articles));
    });
  }

  @override
  void dispose() {
    receivePort.close();
    widget.newsService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    headerSize = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              NewsHeaderImage(height: headerSize),
              const Expanded(child: NewsPageView()),
            ],
          ),
          Positioned(
            top: headerSize - 75,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black,
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: const FavoritesFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
