import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lean_words/config/l10n/l10n.dart';
import 'package:lean_words/config/router/router.gr.dart';
import 'package:lean_words/random_words/business/business.dart';

class RandomWordsView extends StatelessWidget {
  const RandomWordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () => context.router.push(const FavouriteWordsRoute()),
          )
        ],
      ),
      body: BlocBuilder<RandomWordsCubit, RandomWordsState>(
        builder: (_, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemCount: 100,
                  itemBuilder: (_, index) {
                    final word = state.words[index];
                    final isFav = state.isFavourite(word);

                    return ListTile(
                      title: Text(word, style: const TextStyle(fontSize: 18)),
                      trailing: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                        color: isFav ? Colors.red : null,
                      ),
                      onTap: () => context
                          .read<RandomWordsCubit>()
                          .toggleFavourite(word),
                    );
                  },
                  separatorBuilder: (_, index) => const Divider(),
                );
        },
      ),
    );
  }
}
