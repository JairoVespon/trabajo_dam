import 'package:flutter/material.dart';
import 'dart:math';

import 'package:trabajo_dam/nsft.dart';

void main() {
  runApp(MyApp0());
}

class MyApp0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expo DAM Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyApp> {
  int index = 0;
  var random = Random();
  List<Color> myColors = [
    Colors.green,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.tealAccent,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.cyanAccent,
    Colors.orangeAccent,
  ];
  void changeColorIndex (){
    setState(() {
      index = random.nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewScreen(),));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
                child: Text('Presiona...'),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}