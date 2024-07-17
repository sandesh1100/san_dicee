import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: SanDicee(),
      ),
    ),
  );
}

class SanDicee extends StatefulWidget {
  @override
  State<SanDicee> createState() => _SanDiceeState();
}

class _SanDiceeState extends State<SanDicee> {
  int dice1Count = 1;
  int dice2Count = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      dice1Count = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$dice1Count.png'))),
          Divider(
            color: Colors.black,
            height: 50.0,
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      dice2Count = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$dice2Count.png')))
        ],
      ),
    );
  }
}
