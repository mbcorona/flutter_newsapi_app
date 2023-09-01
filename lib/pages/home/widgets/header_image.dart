part of '../home.dart';

class NewsHeaderImage extends StatelessWidget {
  const NewsHeaderImage({
    super.key,
    required this.height,
  });

  final double height;

  ImageProvider getImage(String? url) {
    if (url == null || url.isEmpty) {
      return const AssetImage('assets/image_placeholder.jpeg');
    }
    return NetworkImage(url);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 900),
          child: FadeInImage(
            key: Key(state.headerImage ?? ''),
            height: height,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/image_placeholder.jpeg'),
            image: getImage(state.headerImage),
          ),
        );
      },
    );
  }
}
