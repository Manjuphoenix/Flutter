import 'package:flutter/material.dart';


main(){
  runApp(MaterialApp(home: Center(child: MyApp(),), debugShowCheckedModeBanner: false,));
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
with SingleTickerProviderStateMixin {
    Animation animation, childAnimation;
    AnimationController animationController;

    @override
    void initState(){
      super.initState();
      animationController = AnimationController(duration: Duration(seconds: 2), vsync: this);
      animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeIn));
      childAnimation = Tween(begin: -0.25, end: 125.0).animate(CurvedAnimation(curve: Curves.easeIn, parent: animationController));
      animationController.forward();
    }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child){
        return Scaffold(
          body: Center(
            child: Container(
              child: Transform(
                transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
                child: AnimatedBuilder(
                  animation: childAnimation,
                  builder: (BuildContext context, Widget child){
                    return Container(
                      padding: EdgeInsets.all((15)),
                      width: childAnimation.value*2,
                      height: childAnimation.value*2,
                      child: ListView(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(hintText: 'Username'),
                          ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(hintText: 'Passwrd'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RaisedButton(
                              onPressed: () {  },
                              child: Text("//Login"),
                            )
                        ],
                      ),
                    );
                  }
                ),
              ),
            ),
          ),
        );
      },
      
    );
  }
}
