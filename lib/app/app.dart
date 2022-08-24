import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lean_words/config/router/router.gr.dart';
import 'package:lean_words/l10n/l10n.dart';
import 'package:lean_words/random_words/business/business.dart';
import 'package:lean_words/theme/theme.dart';

class LeanApp extends StatelessWidget {
  LeanApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomWordsCubit()..initialize(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
