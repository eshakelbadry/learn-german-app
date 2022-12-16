import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../components/list_colors.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({
    Key? key,
  }) : super(key: key);

  final List<Item> colors = const [
    Item(
      colorType: Colors.white,
      sound: 'white.wav',
      geName: 'Weiß',
      enName: 'White',
    ),
    Item(
        colorType: Colors.black,
        sound: 'black.wav',
        geName: 'Schwarz',
        enName: 'Black'),
    Item(
      colorType: Colors.red,
      sound: 'red.wav',
      geName: 'Rot',
      enName: 'Red',
    ),
    Item(
        colorType: Colors.blue,
        sound: 'blue.wav',
        geName: 'Blau',
        enName: 'Blue'),
    Item(
        colorType: Colors.green,
        sound: 'green.wav',
        geName: 'Grün',
        enName: 'Green'),
    Item(
        colorType: Colors.brown,
        sound: 'brown.wav',
        geName: 'Braun',
        enName: 'Brown'),
    Item(
        colorType: Colors.yellow,
        sound: 'yellow.wav',
        geName: 'Gelb',
        enName: 'Yellow'),
    Item(
        colorType: Colors.grey,
        sound: 'gray.wav',
        geName: 'Grau',
        enName: 'Gray'),
    Item(
        colorType: Colors.orange,
        sound: 'orange.wav',
        geName: 'Orange',
        enName: 'Orange'),
    Item(
        colorType: Colors.purple,
        sound: 'purple.wav',
        geName: 'Lila',
        enName: 'Purple'),
    Item(
        colorType: Colors.pink,
        sound: 'pink.wav',
        geName: 'Rosa',
        enName: 'Pink'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff7C3FA0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 22, 67, 129),
        title: Text(
          'Colors',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorsListItem(
            colorsItem: colors[index],
            color: Color.fromARGB(255, 22, 67, 129),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
// 