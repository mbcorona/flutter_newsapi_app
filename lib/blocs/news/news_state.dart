part of 'news_bloc.dart';

enum NewsStatus { initial, loading, loaded, error }

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(NewsStatus.initial) status,
    @Default(<Article>[]) List<Article> articles,
    String? headerImage,
  }) = _NewsState;
}
