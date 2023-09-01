import 'package:news_data/news_data.dart';

final fakeArticles = <Article>[
  Article(
    title: 'First Article',
    description: 'Some description here',
    urlToImage: 'https://image.com/sasa.jpg',
  ),
  Article(
    title: 'Second Article',
    description: 'Second some description here',
    urlToImage: 'https://image.com/sasa.jpg',
  ),
];

final fakeArticlesJson = fakeArticles.map((e) => e.toJson()).toList();
final fakeGetArticlesResponse = {
  'status': 'ok',
  'articles': fakeArticlesJson,
};
