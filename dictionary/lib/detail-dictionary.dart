import 'package:flutter/material.dart';

class DetailDictionary extends StatelessWidget{
  DetailDictionary({required this.keyword,required this.meaning1,required this.meaning2,required this.meaning3,required this.meaning4});
  String keyword="";
  String meaning1="";
  String meaning2="";
  String meaning3="";
  String meaning4="";

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Dictionary"),),
        body: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.all(10),child: Text(keyword,style: TextStyle(fontSize: 20),),),
            Divider(
              color: Colors.grey,
              height: 15,
            ),
            meaning1=="null"?Text(""):ListTile(leading:Icon(Icons.star), title:Text(meaning1)),
            meaning2=="null"?Text(""):ListTile(leading:Icon(Icons.star), title:Text(meaning2)),
            meaning3=="null"?Text(""):ListTile(leading:Icon(Icons.star), title:Text(meaning3)),
            meaning4=="null"?Text(""):ListTile(leading:Icon(Icons.star), title:Text(meaning4)),

        ],),)
      
      );
    }
}