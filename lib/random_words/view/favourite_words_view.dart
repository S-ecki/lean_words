import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lean_words/random_words/business/business.dart';

class FavouriteWordsView extends StatelessWidget {
  const FavouriteWordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<RandomWordsCubit, RandomWordsState>(
        builder: (context, state) {
          return Text(state.favourites.join(', '));
        },
      ),
    );
  }
}
