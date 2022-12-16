import 'dart:ui';

import 'package:flutter/foundation.dart';

class Item {
  final String sound;
  final String? image;
  final String geName;
  final String enName;
  final Color? colorType;
  const Item(
      {required this.sound,
      @required this.image,
      required this.geName,
      required this.enName, 
      @required this.colorType,
      });
}
