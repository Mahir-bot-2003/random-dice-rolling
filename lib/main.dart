import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
          child: Text("DICE",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold
            ),
          ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDicenumber = 1;
  int RightDicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    LeftDicenumber = Random().nextInt(6) + 1;
                    RightDicenumber = Random().nextInt(6) + 1;
                  });
                  print("Left button got pressed");
                },
                child: Image(image: AssetImage('images/dice$LeftDicenumber.png'),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      LeftDicenumber = Random().nextInt(6) + 1;
                     RightDicenumber = Random().nextInt(6) + 1;
                    });
                    print("Right button got pressed");
                  },
                  child: Image(image: AssetImage('images/dice$RightDicenumber.png'),)),
            ),),
        ],
      ),
    );
  }
}

