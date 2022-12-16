import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';

import '../components/list_phrase.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  final List<Item> phrases = const [
    Item(
      sound: 'hello.mp3',
      geName: 'Hallo!',
      enName: 'Hello!',
    ),
    Item(
      sound: 'good_morning.mp3',
      geName: 'Guten Morgen!',
      enName: 'Good Morning!',
    ),
    Item(
      sound: 'good_day1.mp3',
      geName: 'Guten Tag!',
      enName: 'Good day!',
    ),
    Item(
      sound: 'good_evening.mp3',
      geName: 'Guten Abend!',
      enName: 'Good evening!',
    ),
    Item(
      sound: 'good_bye1.mp3',
      geName: 'Auf Wiedersehen!',
      enName: 'Goodbye!',
    ),
    Item(
      sound: 'good_bye2.mp3',
      geName: 'Tschüss!',
      enName: 'Goodbye!',
    ),
    Item(
      sound: 'yes.mp3',
      geName: 'Ja',
      enName: 'Yes',
    ),
    Item(
      sound: 'no.mp3',
      geName: 'Nein',
      enName: 'No',
    ),
    Item(
      sound: 'maybe.mp3',
      geName: 'Vielleicht',
      enName: 'Maybe',
    ),
    Item(
      sound: 'please.mp3',
      geName: 'Bitte!',
      enName: 'Please!',
    ),
    Item(
      sound: 'thank_you1.mp3',
      geName: 'Dankeschön!',
      enName: 'Thank you!',
    ),
    Item(
      sound: 'thank_you2.mp3',
      geName: 'Danke!',
      enName: 'Thank you!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff7C3FA0),
        title: Text('Phrases',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      // backgroundColor: Color.fromARGB(255, 6, 157, 199),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: phrases[index],
            color: Color(0xff7C3FA0),
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
