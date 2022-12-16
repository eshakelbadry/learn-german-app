import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/phrases_page.dart';

import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 48, 57),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 1, 48, 57),
              Color.fromARGB(255, 5, 80, 95),
              Color.fromARGB(255, 30, 117, 134),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red.shade900),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Learn German',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(
                    Icons.menu_book_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Category(
                  Color(0xff527F30),
                  'Family Members',
                  Icons.family_restroom_outlined,
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FamilyMembersPage();
                    }));
                  },
                ),
                Category(
                  Color(0xffF6952F),
                  'Numbers',
                  Icons.format_list_numbered_rtl_rounded,
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NumbersPage();
                    }));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Category(
                  Color.fromARGB(255, 22, 67, 129),
                  'Colors',
                  Icons.color_lens_rounded,
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ColorsPage();
                    }));
                  },
                ),
                Category(
                  Color(0xff7C3FA0),
                  'Greetings And More',
                  Icons.speaker_notes,
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PhrasesPage();
                    }));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
