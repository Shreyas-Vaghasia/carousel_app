import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _imagePaths = [
    'images/day01.png',
    'images/day02.png',
    'images/day03.png',
    'images/day04.png',
    'images/day05.png'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: CarouselSlider(
                items: _imagePaths.map((imagePath) {
                  return Builder(
                    builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(imagePath),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(autoPlay: true),
              ),
            ),
            Text(
              'Carousel Slider Made BY-Shreyas Vaghasia',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                letterSpacing: 1.8,
                backgroundColor: Colors.white,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationThickness: 3,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
