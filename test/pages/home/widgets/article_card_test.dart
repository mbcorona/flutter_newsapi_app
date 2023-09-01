import 'package:flutter/material.dart';
import 'package:flutter_news_app/pages/home/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_data/domain/models/models.dart';

void main() {
  testWidgets('article card display title and description', (tester) async {
    const article = Article(title: 'My Amazing title', description: 'description', urlToImage: 'url');
    await tester.pumpWidget(const MaterialApp(home: Material(child: ArticleCard(article: article, isFavorite: true))));
    expect(find.text(article.title), findsOneWidget);
    expect(find.text(article.description), findsOneWidget);
  });
}
