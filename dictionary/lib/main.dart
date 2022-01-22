import 'package:dictionary/dictionary.dart';
import 'package:dictionary/location.dart';
import 'package:dictionary/note.dart';
import 'package:dictionary/personal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary App',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dictionary App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(crossAxisCount: 2,children: [
          Column(children: [
            IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dictionary()));
            },
            icon: Image.asset("assets/dictionary.png"),
            iconSize: 100,
          ),
          Text("Từ điển"),
          ],),
          Column(children: [
            IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Location()));
            },
            icon: Image.asset("assets/location.png"),
            iconSize: 100,
          ),
          Text("Vị trí"),
          ],),
          Column(children: [
            IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Note()));
            },
            icon: Image.asset("assets/note.png"),
            iconSize: 100,
          ),
          Text("Ghi chú"),
          ],),
          Column(children: [
            IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal()));
            },
            icon: Image.asset("assets/user.png"),
            iconSize: 100,
          ),
          Text("Cá nhân"),
          ],),
        ],),
      ),
      drawer: Drawer(child: ListView(
        children: [
          DrawerHeader(child: Text("My Dictionary",style: TextStyle(color: Colors.white),),
          decoration: BoxDecoration(color: Colors.blue),),
          ListTile(title: Text("Vocabulary"),),
          ListTile(title: Text("Location"),),
          ListTile(title: Text("Notes"),),
          ListTile(title: Text("Profile"),),
          ListTile(title: Text("Setting"),),
          ListTile(title: Text("Info"),),
        ],
      ),),
    );
  }
}
