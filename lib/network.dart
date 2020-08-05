import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
myapp()
{
  
       AudioPlayer audioPlayer = AudioPlayer();
        var a=AudioCache(fixedPlayer: audioPlayer);

  return Container(
    color: Colors.grey,
    child: Column(
    

      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
       
          width:400,
          height:100,
          child:Column(
            children: <Widget>[
              Text("Play From Network"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child:Icon(Icons.play_arrow),
                    
                    onPressed:(){
                     

                      audioPlayer.play("https://wynk.in/music/detailsearch/Khulke%20Jeene%20Ka?q=Khulke%20Jeene%20Ka");
                    }  ,),
                  RaisedButton(
                    
                      child:Icon(Icons.pause),
                      onPressed:(){
                        audioPlayer.pause();
                      },
                  ),
                    RaisedButton(
                      onPressed: () {
                          audioPlayer.stop();
                       },
                      
                        child:Icon(Icons.stop),
                    )
                ],
              ),
            ],
          )
          
          

          
          

          
        ),
        Container(
          margin: EdgeInsets.all(20),
          width:400,
          height:100,
          
          child:Column(
            children: <Widget>[
              Text("Play From Assets"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    
                    onPressed:(){
                       
                      a.play("Zindagi%20Aa%20Raha%20Hoon%20Main%20-%20Webmusic.IN.mp3");
                    } ,
                    
                      
                      child:Icon(Icons.play_arrow),
                  ),
                  RaisedButton(
                    onPressed: () {
                      audioPlayer.pause();

                      },
                    
                      child:Icon(Icons.pause),
                  ),
                    RaisedButton(
                      onPressed: () {
                        audioPlayer.stop();

                        },
                      
                        child:Icon(Icons.stop),
                    )

                ],
              ),
            ],
          )
        ),

      ],
      
    ),
  ); 

  


}