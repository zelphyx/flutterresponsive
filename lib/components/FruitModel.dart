import 'dart:ui';

import 'package:flutter/cupertino.dart';

class FruitInfo {
  final String imagePath;
  final String description;

  FruitInfo(this.imagePath, this.description);
}

final List<FruitInfo> fruits = [
  FruitInfo('asset/apple.jpg', 'This is an apple'),
  FruitInfo('asset/guava.jpg', 'This is a guava'),
  FruitInfo('asset/jackfruit.jpg', 'This is a jackfruit'),
  FruitInfo('asset/mango.jpg', 'This is a mango'),
  FruitInfo('asset/orange.jpg', 'This is an orange'),
  FruitInfo('asset/pear.jpg', 'This is a pear'),
  FruitInfo('asset/strawberry.png', 'tes'),
];

