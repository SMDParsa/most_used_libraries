import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class EnglishWords extends StatelessWidget {
  String title;

  EnglishWords({required this.title, super.key});

  String word = nouns.take(50).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.replaceAll('_', ' ').toUpperCase()),
      ),
      body: ListView.builder(
        itemCount: word.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(generateWordPairs().first.toString()),
          );
        },
      ),
    );
  }
}
