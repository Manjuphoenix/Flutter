import 'package:flutter/material.dart';
import 'ui/ux/page1.dart';

main(){
  runApp(MaterialApp(home: Center(child: MyApp(),),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myapp();
  }
}


