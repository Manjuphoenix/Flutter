import 'package:flutter/material.dart';
myapp(){
  var tit = Text(
    "Sticky notes",
    textDirection: TextDirection.ltr, 
    style: TextStyle(fontStyle: FontStyle.normal,),);
  
  var notes = Text(
    "DUDES",
    textDirection: TextDirection.ltr, 
    style: TextStyle(fontStyle: FontStyle.italic,),);

  var bar = AppBar(
    title: tit, 
    backgroundColor: Colors.yellow[600],
    actions: <Widget>[],
    );

  var myhome = Scaffold(
    appBar: bar,
    backgroundColor: Colors.yellow[50],
    body: Center(child: notes,),);

  return myhome;

}