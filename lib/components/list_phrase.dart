import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:toku/models/item.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 80,
          color: color,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      phrase.geName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      phrase.enName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(phrase.sound);
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 28,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
    // SizedBox(height: 5,),
  }
}
