import 'package:flutter/material.dart';

class Location extends StatefulWidget{
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Location"),),
        body: Center(child: OutlinedButton(onPressed: (){}, child: Text("GG MAP",style: TextStyle(color: Colors.white)),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),)));
    }
}