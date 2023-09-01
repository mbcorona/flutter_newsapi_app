import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_data/domain/models/models.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(const NewsState(status: NewsStatus.loading)) {
    on<_SetHeaderImage>(_onSetHeaderImage);
    on<_SetArticles>(_onSetArticles);
  }

  void _onSetHeaderImage(_SetHeaderImage event, Emitter<NewsState> emit) {
    emit(state.copyWith(headerImage: event.urlToImage));
  }

  void _onSetArticles(_SetArticles event, Emitter<NewsState> emit) {
    emit(state.copyWith(status: NewsStatus.loaded, articles: event.articles));
  }
}
