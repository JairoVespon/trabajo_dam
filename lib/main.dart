import 'package:flutter/material.dart';
import 'package:trabajo_dam/nsft.dart';
import 'package:trabajo_dam/ontp.dart';
import 'dart:math';

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
    Colors.blue,
    Colors.amber,
    Colors.grey,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.orange,
  ];
  void changeColorIndex (){
    setState(() {
      index = random.nextInt(10);
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
            InkWell(
              onDoubleTap: changeColorIndex,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
                child: Text('Presiona...'),
                decoration: BoxDecoration(
                  color:myColors[index],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Toque(),));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
                child: Text('Sig.'),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}