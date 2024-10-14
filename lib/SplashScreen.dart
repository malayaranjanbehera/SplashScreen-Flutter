import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/Introscreen.dart';
import 'package:splash_screen/main.dart';

class SplasScreen extends StatelessWidget{
  var nameFromHome;

  SplasScreen(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Triranga- $nameFromHome',
                style: TextStyle(
                    fontSize: 34,fontWeight: FontWeight.w700,
                color: Colors.white
                ),),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage(),));
            }, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}