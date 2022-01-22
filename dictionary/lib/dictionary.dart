import 'dart:convert';

import 'package:dictionary/api.dart';
import 'package:dictionary/detail-dictionary.dart';
import 'package:flutter/material.dart';

class Dictionary extends StatefulWidget {
  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  final _controller=TextEditingController();
  Iterable lstWord = [];
  Iterable lstFindWord=[];
  bool isUpdate = true;
  bool isFind=false;
  @override
  Widget build(BuildContext context) {
    if (isUpdate == true) {
      API(url: "http://10.0.2.2/dictionary/api/get_all_words.php")
          .getDataString()
          .then((value) {
        lstWord = json.decode(value);
        isUpdate = false;
        setState(() {});
      });
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Dictionary"),
        ),
        body: Column(
          children: [
            ListTile(
              title: TextField(
                controller: _controller,
                decoration: InputDecoration(hintText: "Nhập từ khóa"),
              ),
              trailing: OutlinedButton(
                onPressed: () {
                  if(lstFindWord.length>0){
                    lstFindWord=[];
                  }
                  lstFindWord=lstWord.where((element) => element["keyword"].toString().startsWith(_controller.text));
                  setState(() {
                    if(lstFindWord.isNotEmpty){
                    isFind=true;
                  }else{
                    isFind=false;
                  }
                  });
                },
                child: Text("Search", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
              ),
            ),
            isFind==true?Expanded(child: ListView.builder(
              itemCount: lstFindWord.length,
              itemBuilder: (context,index)=>ListTile(
                leading: Icon(Icons.search),
                title: Text(lstFindWord.elementAt(index)["keyword"].toString()),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailDictionary(
                    keyword: lstFindWord.elementAt(index)["keyword"].toString(),
                    meaning1: lstFindWord.elementAt(index)["meaning1"].toString(),
                    meaning2: lstFindWord.elementAt(index)["meaning2"].toString(),
                    meaning3: lstFindWord.elementAt(index)["meaning3"].toString(),
                    meaning4: lstFindWord.elementAt(index)["meaning4"].toString(),
                  )));
                },
            ))):Text("")
          ],
        ));
  }
}
