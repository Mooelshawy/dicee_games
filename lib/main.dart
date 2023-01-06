import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColorDark: Colors.purple[700],
          primaryColorLight: Colors.purple[100],
          primaryColor: Colors.purple[500],
          accentColor: Colors.deepPurple[200]),
      debugShowCheckedModeBanner: false,
      home: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      appBar: AppBar(
        title: Text('Dicee Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        elevation: 10,
      ),
      body: DicePage(),
    );
  }
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numberOfDicceleft = 1 ;
  int numberOfDiccertigt = 1 ;
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: [
          //widget working on Ratio between widget
          //like weight in Android Development
          //having flex property for make a Ratio
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                 setState(() {
                   numberOfDicceleft = Random().nextInt(6);
                 });
                },
                child: Image(
                  image: AssetImage('images/dice${numberOfDicceleft ==0 ? 6 : numberOfDicceleft}.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                   setState(() {
                   numberOfDiccertigt = Random().nextInt(6)+1;
                 });
                },
                child: Image(
                  image: AssetImage('images/dice${numberOfDiccertigt}.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}