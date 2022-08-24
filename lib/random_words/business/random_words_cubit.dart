import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lean_words/random_words/business/random_words_state.dart';
import 'package:lean_words/random_words/repository/random_words_generator.dart';

class RandomWordsCubit extends Cubit<RandomWordsState> {
  RandomWordsCubit() : super(RandomWordsState.initial);

  final _randomWordGenerator = RandomWordsGenerator();

  Future<void> initialize() async {
    final loadingState = state.copyWith(isLoading: true);
    emit(loadingState);

    final pairs = await _randomWordGenerator.randomWordPairs(100);
    final words = pairs.map((pair) => pair.asPascalCase).toList();

    final loadedState = state.copyWith(words: words, isLoading: false);

    emit(loadedState);
  }

  void toggleFavourite(String word) {
    assert(state.words.contains(word), 'Word not found in list');

    final newFavourites = state.favourites.contains(word)
        ? state.favourites.where((favourite) => favourite != word).toList()
        : state.favourites + [word];

    final newState = state.copyWith(
      favourites: newFavourites,
    );
    emit(newState);
  }
}
