import 'package:flutter/material.dart';

class Personal extends StatefulWidget{
  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Thông tin cá nhân"),),
        body: Center(child: Text("Thông tin cá nhân"),),
      );
    }
}