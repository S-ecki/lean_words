// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'random_words_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomWordsState {
  List<String> get words => throw _privateConstructorUsedError;
  List<String> get favourites => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomWordsStateCopyWith<RandomWordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomWordsStateCopyWith<$Res> {
  factory $RandomWordsStateCopyWith(
          RandomWordsState value, $Res Function(RandomWordsState) then) =
      _$RandomWordsStateCopyWithImpl<$Res>;
  $Res call({List<String> words, List<String> favourites, bool isLoading});
}

/// @nodoc
class _$RandomWordsStateCopyWithImpl<$Res>
    implements $RandomWordsStateCopyWith<$Res> {
  _$RandomWordsStateCopyWithImpl(this._value, this._then);

  final RandomWordsState _value;
  // ignore: unused_field
  final $Res Function(RandomWordsState) _then;

  @override
  $Res call({
    Object? words = freezed,
    Object? favourites = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favourites: favourites == freezed
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RandomWordsStateCopyWith<$Res>
    implements $RandomWordsStateCopyWith<$Res> {
  factory _$$_RandomWordsStateCopyWith(
          _$_RandomWordsState value, $Res Function(_$_RandomWordsState) then) =
      __$$_RandomWordsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> words, List<String> favourites, bool isLoading});
}

/// @nodoc
class __$$_RandomWordsStateCopyWithImpl<$Res>
    extends _$RandomWordsStateCopyWithImpl<$Res>
    implements _$$_RandomWordsStateCopyWith<$Res> {
  __$$_RandomWordsStateCopyWithImpl(
      _$_RandomWordsState _value, $Res Function(_$_RandomWordsState) _then)
      : super(_value, (v) => _then(v as _$_RandomWordsState));

  @override
  _$_RandomWordsState get _value => super._value as _$_RandomWordsState;

  @override
  $Res call({
    Object? words = freezed,
    Object? favourites = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_RandomWordsState(
      words: words == freezed
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favourites: favourites == freezed
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RandomWordsState extends _RandomWordsState {
  const _$_RandomWordsState(
      {required final List<String> words,
      required final List<String> favourites,
      required this.isLoading})
      : _words = words,
        _favourites = favourites,
        super._();

  final List<String> _words;
  @override
  List<String> get words {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  final List<String> _favourites;
  @override
  List<String> get favourites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favourites);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RandomWordsState(words: $words, favourites: $favourites, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomWordsState &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_words),
      const DeepCollectionEquality().hash(_favourites),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_RandomWordsStateCopyWith<_$_RandomWordsState> get copyWith =>
      __$$_RandomWordsStateCopyWithImpl<_$_RandomWordsState>(this, _$identity);
}

abstract class _RandomWordsState extends RandomWordsState {
  const factory _RandomWordsState(
      {required final List<String> words,
      required final List<String> favourites,
      required final bool isLoading}) = _$_RandomWordsState;
  const _RandomWordsState._() : super._();

  @override
  List<String> get words;
  @override
  List<String> get favourites;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_RandomWordsStateCopyWith<_$_RandomWordsState> get copyWith =>
      throw _privateConstructorUsedError;
}
