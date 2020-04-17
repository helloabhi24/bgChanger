import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: myHome(),
      
    );
  }
}

class myHome extends StatefulWidget {
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  List<Color> randomColorList =[
    Colors.yellow,
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.green,
    Colors.grey,
    Colors.lightGreen
  ];

  int index;
  int data;
  Color colorEightNow;

  void changeColor(){
    setState(() {
      index= Random().nextInt(randomColorList.length);
      colorEightNow=randomColorList[index];
      data=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        color: colorEightNow
      ),
      child: MaterialButton(onPressed: changeColor,
                            child: Text("$data",
                                    style: TextStyle(color: Colors.white,
                                                      fontSize: 30.0,
                                                      wordSpacing: 5.0,
                                                      letterSpacing: 3.0,
                                                      fontStyle: FontStyle.italic,
                                                      ),),),
      
    );
  }
}