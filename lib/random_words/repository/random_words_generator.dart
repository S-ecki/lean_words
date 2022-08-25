import 'package:english_words/english_words.dart';

class RandomWordsGenerator {
  /// Returns `count` number of random Wordpairs after 2 seconds.
  Future<List<WordPair>> randomWordPairs(int count) async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return generateWordPairs().take(count).toList();
  }

  Stream<WordPair> wordPairStream() async* {
    final pairs = generateWordPairs();

    for (final pair in pairs) {
      // ignore: prefer_const_constructors
      await Future<void>.delayed(Duration(seconds: 1));
      yield pair;
    }
  }
}
