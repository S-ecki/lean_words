// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../random_words/view/favourite_words_view.dart' as _i2;
import '../../random_words/view/random_words_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RandomWordsRoute.name: (routeData) {
      return _i3.MaterialPageX<void>(
          routeData: routeData, child: const _i1.RandomWordsView());
    },
    FavouriteWordsRoute.name: (routeData) {
      return _i3.MaterialPageX<void>(
          routeData: routeData, child: const _i2.FavouriteWordsView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(RandomWordsRoute.name, path: '/'),
        _i3.RouteConfig(FavouriteWordsRoute.name, path: '/favourite-words-view')
      ];
}

/// generated route for
/// [_i1.RandomWordsView]
class RandomWordsRoute extends _i3.PageRouteInfo<void> {
  const RandomWordsRoute() : super(RandomWordsRoute.name, path: '/');

  static const String name = 'RandomWordsRoute';
}

/// generated route for
/// [_i2.FavouriteWordsView]
class FavouriteWordsRoute extends _i3.PageRouteInfo<void> {
  const FavouriteWordsRoute()
      : super(FavouriteWordsRoute.name, path: '/favourite-words-view');

  static const String name = 'FavouriteWordsRoute';
}
