import 'package:flutter/material.dart';

class Note extends StatefulWidget{
  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Ghi chú"),),
        body: Center(child: Text("Ghi chú"),),
      );
    }
}