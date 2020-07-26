import 'package:flutter/material.dart';
myapp(){


  var tit = Text(
    "Sticky notes",
    textDirection: TextDirection.ltr, 
    style: TextStyle(fontStyle: FontStyle.normal,),);
  
  var abc = Text(
    "DUDES",
    textDirection: TextDirection.ltr, 
    style: TextStyle(fontStyle: FontStyle.italic,),);

  var image = Image.network(
    'https://blog.hubspot.com/hubfs/image8-2.jpg',
  height: double.infinity,
  width: double.infinity,
  );


  var home = Container(
  height: 250,
  width: 250,
  child: image,
  margin: EdgeInsets.all(2.0),
  color: Colors.green[200],
  );

  var bar = AppBar(
    title: tit, 
    backgroundColor: Colors.yellow[600],
    actions: <Widget>[],
    );

  var myhome = Scaffold(
    appBar: bar,
    backgroundColor: Colors.yellow[50],
    body: Center(child: home,),
    );

  return myhome;

}
