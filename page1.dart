import 'package:flutter/material.dart';

myapp(){
  var homeicon = Icon(
    Icons.home,
    color: Colors.blue,
    size: 30.0,
  );


  var abar = Text(
    "Home",
    textAlign: TextAlign.left,
    textDirection: TextDirection.ltr,
    style: TextStyle(color: Colors.black),
  );



var bar = Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
    backgroundColor: Colors.white ,
  title: abar,
   leading: homeicon,),
  body: Container( height: double.infinity, width: double.infinity ,child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [ 
  Row(children: <Widget>[
      Image( height: 30, width: 65 ,image: NetworkImage('https://cdn1.iconfinder.com/data/icons/hawcons/32/700175-icon-1-cloud-256.png'),),
      Text("Cloud Service", textAlign: TextAlign.center, textDirection: TextDirection.ltr,)
    ],),
  Row(children: <Widget>[
    Image( width: 65, height: 30 ,image: NetworkImage('http://codeblog.dotsandbrackets.com/wp-content/uploads/2017/02/wide-logo.jpg'),),
    Text("Elastic Search",textAlign: TextAlign.center,textDirection: TextDirection.ltr,)
  ],),
  Row(children: <Widget>[
    Image( height: 30, width: 65 ,image: NetworkImage('http://opensourceforu.com/wp-content/uploads/2016/11/GIT-on-Windows.jpg')),
    Text("Git Bash", textAlign: TextAlign.center, textDirection: TextDirection.ltr,),
   ],),
  Row(children: <Widget>[
    Image( height: 30, width: 65 ,image: NetworkImage('http://jebriggs.com/php/jenkins-icon.png'),),
    Text("Jenkins", textAlign: TextAlign.center,textDirection: TextDirection.ltr,),
  ],),
  Row(children: <Widget>[
    Image( height: 30, width: 65 ,image: NetworkImage('https://www.itvedant.com/wp-content/uploads/2018/09/ml-icon.png'),),
    Text("Machine Learning", textAlign: TextAlign.center, textDirection: TextDirection.ltr,),
  ],),
  Row(children: <Widget>[Icon(Icons.apps)],)
  ],),    
  ),
  );
  return bar;
}