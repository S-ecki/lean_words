import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lean_words/random_words/business/business.dart';

class RandomWordsView extends StatelessWidget {
  const RandomWordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WordPair Generator'),
        actions: const [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: null,
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
                      title: Text(word),
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


// void _pushSaved() {
//   // Navigator manages child widgets with a stack
//   Navigator.of(context).push<Scaffold>(
//     // this gets pushed on navigator stack - content defined by builder
//     MaterialPageRoute(
//       builder: (BuildContext context) {
//         // define List of tiles
//         // take every pair from _saved
//         // and create ListTile similar to HomeScreen
//         final tiles = _saveWordPairs.map((WordPair pair) {
//           return ListTile(
//             title: Text(pair.asCamelCase, style: const TextStyle(fontSize: 16)),
//           );
//         });

//         // put divider between every tile
//         // convert to list at the end
//         final dividedList = ListTile.divideTiles(
//           context: context,
//           // tiles from List above
//           tiles: tiles,
//         ).toList();

//         // defines how screen looks
//         return Scaffold(
//           appBar: AppBar(title: const Text('saved Pairs')),
//           // create ListView from List of Tiles
//           body: ListView(children: dividedList),
//         );
//       }, // builder
//     ),
//   ); // Navigator
// }
