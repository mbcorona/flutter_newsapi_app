part of '../home.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.article,
    required this.isFavorite,
  });

  final Article article;
  final bool isFavorite;

  void onClickFavorite(BuildContext context, Article article) {
    if (isFavorite) {
      context.read<FavoritesBloc>().add(FavoritesEvent.remove(article));
    } else {
      context.read<FavoritesBloc>().add(FavoritesEvent.add(article));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFFDFDFDF), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  article.title,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              IconButton(
                  onPressed: () {
                    onClickFavorite(context, article);
                  },
                  icon: isFavorite
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        )
                      : const Icon(Icons.favorite_outline))
            ],
          ),
          const SizedBox(height: 10),
          Text(
            article.description,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
