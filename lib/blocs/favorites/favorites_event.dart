part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.started() = _Started;
  const factory FavoritesEvent.load() = _Load;
  const factory FavoritesEvent.add(Article article) = _Add;
  const factory FavoritesEvent.remove(Article article) = _Remove;
}
