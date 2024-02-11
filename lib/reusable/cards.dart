import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  final String imagePath;
  final String description;

  const CardGrid({
    required this.imagePath,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Card(

        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 14,fontFamily: 'LibreCaslonText'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class cardhorizontal extends StatelessWidget {
  final String imagePath;
  final String description;

  const cardhorizontal({
    required this.imagePath,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.9;
    double imageWidth = cardWidth * 0.25;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            SizedBox(
              width: imageWidth,
              height: imageWidth,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16), // Adjust the spacing as needed
            Expanded(
              child: Center(
                child: Text(
                  description,
                  style: TextStyle(fontFamily: 'LibreCaslonText', fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
