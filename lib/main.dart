import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Startup Namer"),
        ),
        body: Center(
          child: RamdomWords()
        )
      ),
    );
  }
}

class RamdomWordsState extends State<RamdomWords> {
  @override
    Widget build(BuildContext context) {
      final wordPair = WordPair.random();
      return Text(wordPair.asPascalCase);
    }
}

class RamdomWords extends StatefulWidget {
  @override
  RamdomWordsState createState() => RamdomWordsState();
}