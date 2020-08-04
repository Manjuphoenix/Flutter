
import 'package:audioplayers/audio_cache.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';




myapp() {

  

  var bar = Text("Music", textAlign: TextAlign.left, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black),);


  var homeicon = Icon(
    Icons.music_note,
    color: Colors.white54,
  ); 

  var home = Scaffold(
  appBar: AppBar(backgroundColor: Colors.blueGrey, title: bar, leading: homeicon,),
  body: Container(width: double.infinity,height: double.infinity, 
  
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
            width: double.infinity,
            child: RaisedButton(onPressed: () { 
              var audio = AudioCache();
              audio.play('Bgm.mp3');
             },
             elevation: 5,
             child: Row(children: <Widget>[
               Image( height: 30, width: 65,alignment: Alignment.topLeft ,image: NetworkImage('https://cdn1.iconfinder.com/data/icons/hawcons/32/700175-icon-1-cloud-256.png'),),
               Text("Bigil", textAlign: TextAlign.left, textDirection: TextDirection.ltr,),
             ],)
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: RaisedButton(onPressed: (){
             var aud = AudioCache();
             aud.play('Bgm.mp3');
            },
            child: Row(children: <Widget>[
              Image(height: 30, width: 60, alignment: Alignment.topLeft, image: NetworkImage('https://i.ytimg.com/vi/EPm05O1rKxE/maxresdefault.jpg'),),
              Text("Bigil", textAlign: TextAlign.left,textDirection: TextDirection.ltr,)
            ],),elevation: 5,
          ),),
          Container(
            
            height: 50,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: RaisedButton(onPressed: ()
                  {
                    print("previous");
                    AudioPlayer audioPlayer = AudioPlayer();
                    audioPlayer.pause();
                  },
                  child: Icon(Icons.skip_previous),
                  ),
                ),
                Container(
                  child: RaisedButton(onPressed: (){
                    print('Pause');
                    var audio = AudioCache();
                    audio.play('Bgm.mp3');
                  },
                  child: Icon(Icons.play_circle_filled),
                  ),),
                Container(
                  child: RaisedButton(onPressed: (){
                    print("next");
                    AudioPlayer audioPlayer = AudioPlayer();
                    audioPlayer.pause();
                  },
                  child: Icon(Icons.skip_next),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),),
  );
  return home;
}

