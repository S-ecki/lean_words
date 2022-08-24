import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_words_state.freezed.dart';

@freezed
class RandomWordsState with _$RandomWordsState {
  const factory RandomWordsState({
    required List<String> words,
    required List<String> favourites,
    required bool isLoading,
  }) = _RandomWordsState;

  const RandomWordsState._();

  static const initial = RandomWordsState(
    words: [],
    favourites: [],
    isLoading: false,
  );

  bool isFavourite(String word) => favourites.contains(word);
}
