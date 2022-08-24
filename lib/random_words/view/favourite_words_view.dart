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
          return ListView.separated(
            itemCount: state.favourites.length,
            itemBuilder: (_, index) {
              final word = state.favourites[index];

              return ListTile(
                title: Text(word, style: const TextStyle(fontSize: 18)),
                trailing: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onTap: () =>
                    context.read<RandomWordsCubit>().toggleFavourite(word),
              );
            },
            separatorBuilder: (_, index) => const Divider(),
          );
        },
      ),
    );
  }
}
