import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicees'),
          centerTitle: true,
        ),
        body: MyDicees(),
      ),
    ),
  );
}

class MyDicees extends StatefulWidget {
  @override
  _MyDiceesState createState() => _MyDiceesState();
}

class _MyDiceesState extends State<MyDicees> {
  int leftDiceVal = 1;
  int rightDiceVal = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftDiceVal.png'),
                  onPressed: () {
                    setState(() {
                      leftDiceVal = Random().nextInt(6) + 1;
                    });
                    print('Left dice got pressed');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceVal.png'),
                  onPressed: () {
                    setState(() {
                      rightDiceVal = Random().nextInt(6) + 1;
                    });
                    print('Right dice was pressed');
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding:EdgeInsets.only(top: 80),
            child: RaisedButton(
              padding: EdgeInsets.only(left: 40 , right: 40),
                color: Colors.white,
                child: Text(
                  'Rest',
                  style: TextStyle(color: Colors.red, fontSize: 20.0),
                ),
                onPressed: () {
                  setState(() {
                    leftDiceVal = 1 ;
                    rightDiceVal = 1;
                  });
                  print('Reset got pressed');
                }),
          ),
        ],
      ),
    );
  }
}
