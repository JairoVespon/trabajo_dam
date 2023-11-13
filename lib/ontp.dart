import 'package:flutter/material.dart';

class Toque extends StatelessWidget {
  const Toque({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            debugPrint("TAG: Un Toque");
          },
          onDoubleTap: () {
            debugPrint("TAG: Dos Toques");
          },
          onLongPress: () {
            debugPrint("TAG: Toque Mantenido");
          },
          child: const Text("Presiona..."),
        ),
      ),
    );
  }
}