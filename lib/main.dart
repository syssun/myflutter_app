import 'package:flutter/material.dart';
import 'package:myflutter_app/MainPage.dart';
void main (){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new MaterialApp(
      home: new MainPage(),
    );
  }
}