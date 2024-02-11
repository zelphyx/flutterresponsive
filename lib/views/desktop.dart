import 'package:flutter/material.dart';

import '../components/FruitModel.dart';
import '../components/drawer.dart';
import '../reusable/cards.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Fruitpedia Desktop View',
          style: TextStyle(
              fontFamily: 'LibreCaslonText'
          ),
        ),
      ),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: fruits.length,
        itemBuilder: (BuildContext context, int index) {
          return CardGrid(
            imagePath: fruits[index].imagePath,
            description: fruits[index].description,
          );
        },
      ),




    );
  }
}
