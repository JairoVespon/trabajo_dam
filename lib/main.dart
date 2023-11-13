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