import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.color, this.text, this.icon, this.onTap);
  String? text;
  Color? color;
  IconData? icon;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.only(left: 20),
        // alignment: Alignment.centerLeft,
        height: 140,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon!,
              size: 50,
              color: Colors.white,
            ),
            Text(
              text!,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
