import 'dart:math';

import 'package:flutter/material.dart';

class MyHopmeScreen extends StatefulWidget {
  const MyHopmeScreen({super.key});

  @override
  State<MyHopmeScreen> createState() => _MyHopmeScreenState();
}

class _MyHopmeScreenState extends State<MyHopmeScreen> {
  int leftdiceNo = 1;
  int rightdiceNo = 1;

  void changeDice() {
    setState(() {
      leftdiceNo = Random().nextInt(6) + 1;
      rightdiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 218, 86),
        title: const Text("Dice App"),
        centerTitle: true,
        elevation: 6,
        shadowColor: const Color.fromARGB(255, 20, 71, 22),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                changeDice();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("$leftdiceNo.png"),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                changeDice();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("$rightdiceNo.png"),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
