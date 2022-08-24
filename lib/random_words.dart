// get packages from pub.dev
// add to dependencies in pubspec.yaml
// (copy dependency line from installing chapter on pub.dev)
// installs auto in vsc
// import here in main (line from pub.dev)
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  // final -> cannot directly be reassigned (CAN be dynamic)
  // but does NOT have to be known beforehand (eg Date.now is ok)
  // WordPair is imported from english_words
  // [] makes it an Array
  final _randomWordPairs = <WordPair>[];
  // tracks favourite words
  final _saveWordPairs = <WordPair>{};

  Widget _buildList() {
    // ListView is scrollable list
    return Scrollbar(
      child: ListView.builder(
        itemCount: 50,
        padding: const EdgeInsets.all(16),
        // builds Widgets on demand
        // count is number of to-generate Widget in listView
        itemBuilder: (context, count) {
          // for every second widget, we display a dividing line
          if (count.isOdd) return const Divider();
          // ~/ divides and truncats
          final index = count ~/ 2;
          // if list of randomWords is exhausted
          if (index >= _randomWordPairs.length) {
            // we add 10 new wordsPairs to the list with provided functions
            _randomWordPairs.addAll(generateWordPairs().take(10));
          }
          // if Divider WASNT returned, we build a row with self definded function
          return _buildRow(_randomWordPairs[index]);
        },
      ),
    );
  }

  ListTile _buildRow(WordPair pair) {
    // bool to determine if a word is saved already
    final alreadySaved = _saveWordPairs.contains(pair);
    // one Tile of ListView
    // pair passed in is _randomWordPairs[index]
    return ListTile(
      title: Text(
        // return the pair
        pair.asCamelCase,
        // add custom styling to it
        style: const TextStyle(fontSize: 18),
      ),
      // trailing gets displayed after title
      trailing: Icon(
        // if saved filled, if not only border
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        // if saved red, else no color
        color: alreadySaved ? Colors.red : null,
      ),
      // executes something if you tap on the tile
      onTap: () {
        // setState notifies program that state of this Widget has changed
        setState(() {
          // clicking on already favourite pair removes favourite
          if (alreadySaved) {
            _saveWordPairs.remove(pair);
            // save pair if it wasnt saved before
          } else {
            _saveWordPairs.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    // Navigator manages child widgets with a stack
    Navigator.of(context).push<Scaffold>(
      // this gets pushed on navigator stack - content defined by builder
      MaterialPageRoute(
        builder: (BuildContext context) {
          // define List of tiles
          // take every pair from _saved
          // and create ListTile similar to HomeScreen
          final tiles = _saveWordPairs.map((WordPair pair) {
            return ListTile(
              title:
                  Text(pair.asCamelCase, style: const TextStyle(fontSize: 16)),
            );
          });

          // put divider between every tile
          // convert to list at the end
          final dividedList = ListTile.divideTiles(
            context: context,
            // tiles from List above
            tiles: tiles,
          ).toList();

          // defines how screen looks
          return Scaffold(
            appBar: AppBar(title: const Text('saved Pairs')),
            // create ListView from List of Tiles
            body: ListView(children: dividedList),
          );
        }, // builder
      ),
    ); // Navigator
  }

  // builds main page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // top bar on page
      appBar: AppBar(
        title: const Text('WordPair Generator'),
        // actions are list of widget to display after title - here only one
        actions: <Widget>[
          // IconButton displayed after title
          IconButton(
            icon: const Icon(Icons.list),
            // action on press: function defined above
            onPressed: _pushSaved,
          )
        ],
      ),
      // builds ListView which builds its rows itself
      body: _buildList(),
    );
  }
}
