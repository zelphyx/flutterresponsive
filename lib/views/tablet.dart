import 'package:flutter/material.dart';
import 'package:responsive/components/drawer.dart';

import '../components/FruitModel.dart';
import '../reusable/cards.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Fruitpedia Tablet view',
            style: TextStyle(
                fontFamily: 'LibreCaslonText'
            ),
          ),
        ),
        body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
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