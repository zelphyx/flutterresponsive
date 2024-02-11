import 'package:flutter/material.dart';
import 'package:responsive/components/drawer.dart';

import '../components/FruitModel.dart';
import '../reusable/cards.dart';

class PhoneView extends StatelessWidget {
  const PhoneView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Fruitpedia Mobile View',
        style: TextStyle(
            fontFamily: 'LibreCaslonText'
        ),
        ),
      ),
      body:
      ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (BuildContext context, int index) {
          return cardhorizontal(imagePath: fruits[index].imagePath, description: fruits[index].description);
        },
      )



    );
  }
}