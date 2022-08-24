import 'package:auto_route/annotations.dart';
import 'package:lean_words/random_words/view/random_words_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View',
  routes: <AutoRoute>[
    AutoRoute<void>(page: RandomWordsView, initial: true),
  ],
)
class $AppRouter {}
