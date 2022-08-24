import 'package:auto_route/annotations.dart';
import 'package:lean_words/random_words/view/favourite_words_view.dart';
import 'package:lean_words/random_words/view/random_words_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(page: RandomWordsView, initial: true),
    AutoRoute<void>(page: FavouriteWordsView),
  ],
)
class $AppRouter {}
