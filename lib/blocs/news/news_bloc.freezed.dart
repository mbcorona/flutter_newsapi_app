// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String urlToImage) setHeaderImage,
    required TResult Function(List<Article> articles) setArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String urlToImage)? setHeaderImage,
    TResult? Function(List<Article> articles)? setArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String urlToImage)? setHeaderImage,
    TResult Function(List<Article> articles)? setArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetHeaderImage value) setHeaderImage,
    required TResult Function(_SetArticles value) setArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetHeaderImage value)? setHeaderImage,
    TResult? Function(_SetArticles value)? setArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetHeaderImage value)? setHeaderImage,
    TResult Function(_SetArticles value)? setArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetHeaderImageCopyWith<$Res> {
  factory _$$_SetHeaderImageCopyWith(
          _$_SetHeaderImage value, $Res Function(_$_SetHeaderImage) then) =
      __$$_SetHeaderImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String urlToImage});
}

/// @nodoc
class __$$_SetHeaderImageCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_SetHeaderImage>
    implements _$$_SetHeaderImageCopyWith<$Res> {
  __$$_SetHeaderImageCopyWithImpl(
      _$_SetHeaderImage _value, $Res Function(_$_SetHeaderImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlToImage = null,
  }) {
    return _then(_$_SetHeaderImage(
      null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetHeaderImage implements _SetHeaderImage {
  const _$_SetHeaderImage(this.urlToImage);

  @override
  final String urlToImage;

  @override
  String toString() {
    return 'NewsEvent.setHeaderImage(urlToImage: $urlToImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetHeaderImage &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, urlToImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetHeaderImageCopyWith<_$_SetHeaderImage> get copyWith =>
      __$$_SetHeaderImageCopyWithImpl<_$_SetHeaderImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String urlToImage) setHeaderImage,
    required TResult Function(List<Article> articles) setArticles,
  }) {
    return setHeaderImage(urlToImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String urlToImage)? setHeaderImage,
    TResult? Function(List<Article> articles)? setArticles,
  }) {
    return setHeaderImage?.call(urlToImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String urlToImage)? setHeaderImage,
    TResult Function(List<Article> articles)? setArticles,
    required TResult orElse(),
  }) {
    if (setHeaderImage != null) {
      return setHeaderImage(urlToImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetHeaderImage value) setHeaderImage,
    required TResult Function(_SetArticles value) setArticles,
  }) {
    return setHeaderImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetHeaderImage value)? setHeaderImage,
    TResult? Function(_SetArticles value)? setArticles,
  }) {
    return setHeaderImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetHeaderImage value)? setHeaderImage,
    TResult Function(_SetArticles value)? setArticles,
    required TResult orElse(),
  }) {
    if (setHeaderImage != null) {
      return setHeaderImage(this);
    }
    return orElse();
  }
}

abstract class _SetHeaderImage implements NewsEvent {
  const factory _SetHeaderImage(final String urlToImage) = _$_SetHeaderImage;

  String get urlToImage;
  @JsonKey(ignore: true)
  _$$_SetHeaderImageCopyWith<_$_SetHeaderImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetArticlesCopyWith<$Res> {
  factory _$$_SetArticlesCopyWith(
          _$_SetArticles value, $Res Function(_$_SetArticles) then) =
      __$$_SetArticlesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$_SetArticlesCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_SetArticles>
    implements _$$_SetArticlesCopyWith<$Res> {
  __$$_SetArticlesCopyWithImpl(
      _$_SetArticles _value, $Res Function(_$_SetArticles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$_SetArticles(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_SetArticles implements _SetArticles {
  const _$_SetArticles(final List<Article> articles) : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsEvent.setArticles(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetArticles &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetArticlesCopyWith<_$_SetArticles> get copyWith =>
      __$$_SetArticlesCopyWithImpl<_$_SetArticles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String urlToImage) setHeaderImage,
    required TResult Function(List<Article> articles) setArticles,
  }) {
    return setArticles(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String urlToImage)? setHeaderImage,
    TResult? Function(List<Article> articles)? setArticles,
  }) {
    return setArticles?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String urlToImage)? setHeaderImage,
    TResult Function(List<Article> articles)? setArticles,
    required TResult orElse(),
  }) {
    if (setArticles != null) {
      return setArticles(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetHeaderImage value) setHeaderImage,
    required TResult Function(_SetArticles value) setArticles,
  }) {
    return setArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetHeaderImage value)? setHeaderImage,
    TResult? Function(_SetArticles value)? setArticles,
  }) {
    return setArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetHeaderImage value)? setHeaderImage,
    TResult Function(_SetArticles value)? setArticles,
    required TResult orElse(),
  }) {
    if (setArticles != null) {
      return setArticles(this);
    }
    return orElse();
  }
}

abstract class _SetArticles implements NewsEvent {
  const factory _SetArticles(final List<Article> articles) = _$_SetArticles;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$_SetArticlesCopyWith<_$_SetArticles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  dynamic get status => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;
  String? get headerImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call({dynamic status, List<Article> articles, String? headerImage});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? articles = null,
    Object? headerImage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      headerImage: freezed == headerImage
          ? _value.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$$_NewsStateCopyWith(
          _$_NewsState value, $Res Function(_$_NewsState) then) =
      __$$_NewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic status, List<Article> articles, String? headerImage});
}

/// @nodoc
class __$$_NewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsState>
    implements _$$_NewsStateCopyWith<$Res> {
  __$$_NewsStateCopyWithImpl(
      _$_NewsState _value, $Res Function(_$_NewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? articles = null,
    Object? headerImage = freezed,
  }) {
    return _then(_$_NewsState(
      status: freezed == status ? _value.status! : status,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      headerImage: freezed == headerImage
          ? _value.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewsState implements _NewsState {
  const _$_NewsState(
      {this.status = NewsStatus.initial,
      final List<Article> articles = const <Article>[],
      this.headerImage})
      : _articles = articles;

  @override
  @JsonKey()
  final dynamic status;
  final List<Article> _articles;
  @override
  @JsonKey()
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final String? headerImage;

  @override
  String toString() {
    return 'NewsState(status: $status, articles: $articles, headerImage: $headerImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.headerImage, headerImage) ||
                other.headerImage == headerImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_articles),
      headerImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      __$$_NewsStateCopyWithImpl<_$_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
      {final dynamic status,
      final List<Article> articles,
      final String? headerImage}) = _$_NewsState;

  @override
  dynamic get status;
  @override
  List<Article> get articles;
  @override
  String? get headerImage;
  @override
  @JsonKey(ignore: true)
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
