import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo.shade900,
          appBar: AppBar(
            backgroundColor: Colors.indigo.shade700,
            title: const Text("Dice Game"),
            centerTitle: true,
          ),
          body: const CenterApp(),
        ),
      ),
    ),
  );
}

class CenterApp extends StatefulWidget {
  const CenterApp({Key? key}) : super(key: key);

  @override
  State<CenterApp> createState() => _CenterAppState();
}

class _CenterAppState extends State<CenterApp> {
  int leftBtn = Random().nextInt(6) + 1;
  int rightBtn = Random().nextInt(6) + 1;
  void clickChange() {
    setState(
      () {
        leftBtn = Random().nextInt(6) + 1;
        rightBtn = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(
                () {
                  clickChange();
                },
              );
            },
            child: Image.asset('images/dice$leftBtn.png'),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                clickChange();
              },
              child: Image.asset('images/dice$rightBtn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
