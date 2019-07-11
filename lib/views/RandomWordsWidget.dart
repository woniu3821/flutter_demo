import "package:flutter/material.dart";

import 'package:english_words/english_words.dart';
import 'package:gradient_text/gradient_text.dart';

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GradientText(wordPair.toString().toUpperCase(),
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]),
          style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }
}
