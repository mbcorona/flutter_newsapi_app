import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_data/domain/local_db/local_db.dart';
import 'package:news_data/news_data.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc({NewsDB? newsDB})
      : _newsDB = newsDB,
        super(const FavoritesState()) {
    on<_Load>(_onLoad);
    on<_Add>(_onAdd);
    on<_Remove>(_onRemove);
  }

  late NewsDB? _newsDB;

  Future<void> _validateDB() async {
    _newsDB ??= await NewsDBImpl.create();
  }

  Future<void> _onLoad(_Load event, Emitter<FavoritesState> emit) async {
    await _validateDB();
    final favs = await _newsDB!.getArticles();
    emit(FavoritesState(articles: favs));
  }

  Future<void> _onAdd(_Add event, Emitter<FavoritesState> emit) async {
    await _validateDB();
    await _newsDB!.addArticle(event.article);
    final favs = await _newsDB!.getArticles();
    emit(FavoritesState(articles: favs));
  }

  Future<void> _onRemove(_Remove event, Emitter<FavoritesState> emit) async {
    await _validateDB();
    await _newsDB!.removeArticle(event.article);
    final favs = await _newsDB!.getArticles();
    emit(FavoritesState(articles: favs));
  }
}
