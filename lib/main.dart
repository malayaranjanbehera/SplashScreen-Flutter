import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:splash_screen/Introscreen.dart';
// import 'package:splash_screen/Introscreen.dart';
import 'package:splash_screen/SplashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Introscreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Scrren Page'),
        ),
        body:Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My Screen',style: TextStyle(
                  fontSize: 25,
                ),),
                SizedBox(height: 11,),
                TextField(
                  controller: nameController,
                ),
                SizedBox(height: 11,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) => SplasScreen(nameController.text.toString()),));
                }, child: Text('gooo'))
              ],
            ),
          ),
        )
        ,
    );
  }
}
