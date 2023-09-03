import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/blocs/favorites/favorites_bloc.dart';
import 'package:flutter_news_app/blocs/news/news_bloc.dart';
import 'package:flutter_news_app/pages/home/home.dart';
import 'package:flutter_news_app/services/news_service.dart';
import 'package:news_data/domain/local_db/local_db.dart';
import 'package:news_data/news_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await NewsDBImpl.create();
  runApp(App(newsDB: db, newsService: NewsServiceImpl()));
}

class App extends StatelessWidget {
  const App({super.key, required this.newsDB, required this.newsService});

  final NewsDB newsDB;
  final NewsService newsService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<NewsDB>(create: (_) => newsDB),
        RepositoryProvider<NewsService>(create: (_) => newsService),
      ],
      child: BlocProvider(
        create: (context) => FavoritesBloc(context.read<NewsDB>())..add(const FavoritesEvent.load()),
        child: MaterialApp(
          title: 'Flutter News App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: BlocProvider(
            create: (context) => NewsBloc(),
            child: Builder(builder: (context) {
              return HomePage(newsService: context.read<NewsService>());
            }),
          ),
        ),
      ),
    );
  }
}
