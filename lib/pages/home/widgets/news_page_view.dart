part of '../home.dart';

class NewsPageView extends StatelessWidget {
  const NewsPageView({
    super.key,
  });

  void setHeaderImage(BuildContext context, String url) {
    context.read<NewsBloc>().add(NewsEvent.setHeaderImage(url));
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(viewportFraction: .5);
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return BlocBuilder<FavoritesBloc, FavoritesState>(builder: (context, favsState) {
          return PageView(
            scrollDirection: Axis.vertical,
            controller: pageController,
            onPageChanged: (value) => setHeaderImage(context, state.articles[value].urlToImage),
            children: state.articles.map(
              (e) {
                final isFavorite = favsState.articles.any((f) => f.title == e.title);
                return ArticleCard(
                  article: e,
                  isFavorite: isFavorite,
                );
              },
            ).toList(),
          );
        });
      },
    );
  }
}
