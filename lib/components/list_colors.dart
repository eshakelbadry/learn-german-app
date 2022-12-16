import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:toku/models/item.dart';

class ColorsListItem extends StatelessWidget {
  const ColorsListItem({
    Key? key,
    required this.color,
    required this.itemType,
    required this.colorsItem,
  }) : super(key: key);
  final Item colorsItem;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 250, 236, 198),
                  child: Icon(
                    Icons.circle,
                    size: 80,
                    color: colorsItem.colorType,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        colorsItem.geName,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        colorsItem.enName,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(colorsItem.sound);
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
