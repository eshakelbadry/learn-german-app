import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      // @required this.image,
      required this.item,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item item;
  final Color color;
  final String itemType;
  //  final String ?image;

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
                    color: Color(0xffFEF3D7),
                    child: Image.asset(item.image!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.geName,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      AudioCache player =
                          AudioCache(prefix: 'assets/sounds/$itemType/');
                      player.play(item.sound);
                    } catch (ex) {
                      print(ex);
                    }
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
