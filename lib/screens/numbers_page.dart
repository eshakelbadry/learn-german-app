import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        sound: 'number_zero.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Null',
        enName: 'Zero'),
    Item(
        sound: 'number_one.mp3',
        image: 'assets/images/numbers/number_one.png',
        geName: 'Eins',
        enName: 'One'),
    Item(
        sound: 'number_two.mp3',
        image: 'assets/images/numbers/number_two.png',
        geName: 'Zwei',
        enName: 'Two'),
    Item(
        sound: 'number_three.mp3',
        image: 'assets/images/numbers/number_three.png',
        geName: 'Drei',
        enName: 'Three'),
    Item(
        sound: 'number_four.mp3',
        image: 'assets/images/numbers/number_four.png',
        geName: 'Vier',
        enName: 'Four'),
    Item(
        sound: 'number_five.mp3',
        image: 'assets/images/numbers/number_five.png',
        geName: 'Fünf',
        enName: 'Five'),
    Item(
        sound: 'number_six.mp3',
        image: 'assets/images/numbers/number_six.png',
        geName: 'Sechs',
        enName: 'Six'),
    Item(
        sound: 'number_seven.mp3',
        image: 'assets/images/numbers/number_seven.png',
        geName: 'Sieben',
        enName: 'Seven'),
    Item(
        sound: 'number_eight.mp3',
        image: 'assets/images/numbers/number_eight.png',
        geName: 'Acht',
        enName: 'Eight'),
    Item(
        sound: 'number_nine.mp3',
        image: 'assets/images/numbers/number_nine.png',
        geName: 'Neun',
        enName: 'Nine'),
    Item(
        sound: 'number_ten.mp3',
        image: 'assets/images/numbers/number_ten.png',
        geName: 'Zehn',
        enName: 'Ten'),
    Item(
        sound: 'number_eleven.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Elf',
        enName: 'Eleven'),
    Item(
        sound: 'number_twelve.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Zwölf',
        enName: 'Twelve'),
    Item(
        sound: 'number_thirteen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Dreizehn',
        enName: 'Thirteen'),
    Item(
        sound: 'number_fourteen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Vierzehn',
        enName: 'Fourteen'),
    Item(
        sound: 'number_fifteen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Fünfzehn',
        enName: 'Fifteen'),
    Item(
        sound: 'number_sixteen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Sechzehn',
        enName: 'Sixteen'),
    Item(
        sound: 'number_seventeen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Siebzehn',
        enName: 'Seventeen'),
    Item(
        sound: 'number_eighteen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Achtzehn',
        enName: 'Eighteen'),
    Item(
        sound: 'number_nineteen.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Neunzehn',
        enName: 'Nineteen'),
    Item(
        sound: 'number_twenty.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Zwanzig',
        enName: 'Twenty'),
    Item(
        sound: 'number_thirty.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Dreißig',
        enName: 'Thirty'),
    Item(
        sound: 'number_forty.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Vierzig',
        enName: 'Forty'),
    Item(
        sound: 'number_fifty.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Fünfzig',
        enName: 'Fifty'),
    Item(
        sound: 'number_sixty.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Sechzig',
        enName: 'Sixty'),
    Item(
        sound: 'number_seventy.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Siebzig',
        enName: 'Seventy'),
    Item(
        sound: 'number_eighty.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Achtzig',
        enName: 'Eighty'),
    Item(
        sound: 'number_ninety.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Neunzig',
        enName: 'Ninety'),
    Item(
        sound: 'number_one_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Hundert',
        enName: 'Hundred'),
    Item(
        sound: 'number_two_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Zweihundert',
        enName: 'Two Hundred'),
    Item(
        sound: 'number_three_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Dreihundert',
        enName: 'Three Hundred'),
    Item(
        sound: 'number_four_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Vierhundert',
        enName: 'Four Hundred'),
    Item(
        sound: 'number_five_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Fünfhundert',
        enName: 'Five Hundred'),
    Item(
        sound: 'number_six_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Sechshundert',
        enName: 'Six Hundred'),
    Item(
        sound: 'number_seven_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Siebenhundert',
        enName: 'Seven Hundred'),
    Item(
        sound: 'number_eight_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Achthundert',
        enName: 'Eight Hundred'),
    Item(
        sound: 'number_nine_hundred.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Neunhundert',
        enName: 'Nine Hundred'),
    Item(
        sound: 'number_one_thousand.mp3',
        image: 'assets/images/numbers/number_all.png',
        geName: 'Tausend',
        enName: 'Thousand'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF6952F),
        title: Text('Numbers',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: numbers[index],
            color: Color(0xffF6952F),
            itemType: 'numbers',
          );
        },
      ),
    );
  }

  List<Widget> getList(List<Item> numbers) {
    List<ListItem> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(ListItem(
        item: numbers[i],
        color: Color(0xffF6952F),
        itemType: 'numbers',
      ));
    }
    return itemsList;
  }
}
