import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'network.dart';
import 'video.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:FirstScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
class FirstScreen extends StatelessWidget
  {


    @override
    Widget build(BuildContext context) {
      var myhome=Scaffold(
    appBar: AppBar(title:Text("Audio Player"),actions: <Widget>[
      IconButton(icon: Icon(Icons.arrow_forward), onPressed:()
      {
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
      }),
    ],),
    body: myapp(),
    );
    
    return myhome;
  }

  
     
  }