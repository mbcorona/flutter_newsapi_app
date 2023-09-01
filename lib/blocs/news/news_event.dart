part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.setHeaderImage(String urlToImage) = _SetHeaderImage;
  const factory NewsEvent.setArticles(List<Article> articles) = _SetArticles;
}
