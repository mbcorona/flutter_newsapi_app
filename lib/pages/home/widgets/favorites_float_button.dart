part of '../home.dart';

class FavoritesFloatingButton extends StatelessWidget {
  const FavoritesFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FavoritesPage()));
      },
      tooltip: 'Favorites',
      child: SizedBox(
        width: 40,
        height: 40,
        child: Stack(
          children: [
            const Center(child: Icon(Icons.favorite)),
            Positioned(
              top: 0,
              right: 0,
              child: BlocBuilder<FavoritesBloc, FavoritesState>(
                builder: (context, state) {
                  if (state.articles.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return Badge(label: Text(state.articles.length.toString()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
