import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/blocs/favorites/favorites_bloc.dart';
import 'package:flutter_news_app/pages/home/home.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          if (state.articles.isEmpty) {
            return const Center(
              child: Text(
                'Articles added to favorites will be shown here',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            );
          }
          return ListView(
            children: state.articles
                .map((e) => ArticleCard(
                      article: e,
                      isFavorite: true,
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
