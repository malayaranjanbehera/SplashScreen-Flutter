import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';

class Introscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('IntroScreen',
          style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: Container(
        color: Colors.indigoAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome',style:
                TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                Text('To My IntroScreen',style:
                TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.orange),)
              ],
            ),
            SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
            }, child:Text('NxtToGo!!'))
          ],
        ),
      ),
    );
  }
}