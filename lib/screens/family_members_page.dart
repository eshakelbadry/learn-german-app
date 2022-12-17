import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        geName: 'Der Vater',
        enName: 'The Father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        geName: 'Die Mütter',
        enName: 'The Mother'),
    Item(
        sound: 'grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        geName: 'Der Großvater',
        enName: 'The Grandfather'),
    Item(
        sound: 'grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        geName: 'Die Großmütter',
        enName: 'The Grandmother'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_younger_son.png',
        geName: 'Der Sohn',
        enName: 'The Son'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_younger_daughter.png',
        geName: 'Die Tochter',
        enName: 'The Daughter'),
    Item(
        sound: 'grandson.wav',
        image: 'assets/images/family_members/family_older_son.png',
        geName: 'Der Enkelsohn',
        enName: ' The Older Son'),
    Item(
        sound: 'granddaughter.wav',
        image: 'assets/images/family_members/family_older_daughter.png',
        geName: 'Die Enkelin',
        enName: 'The Older Daughter'),
    Item(
        sound: 'brother.wav',
        image: 'assets/images/family_members/family_brother.png',
        geName: 'Der Brüder',
        enName: 'The Brother'),
    Item(
        sound: 'sister.wav',
        image: 'assets/images/family_members/family_sister.png',
        geName: 'Die Schwester',
        enName: 'The Sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff527F30),
          title:const Text('Family Members',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: familyMembers[index],
            color:const Color(0xff527F30),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
