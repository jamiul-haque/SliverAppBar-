import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.deepOrange])
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 200,
                backgroundColor: Colors.blue,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("Jamiul"),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate(<Widget>[
                addDetails("one", "This is One"),
                addDetails("two", "This is Two"),
                addDetails("three", "This is Three"),
                addDetails("four", "This is Four"),
                addDetails("five", "This is Five"),
                addDetails("six", "This is Six"),
                addDetails("seven", "This is Seven"),
                addDetails("eight", "This is Eight"),
                addDetails("nine", "This is Nine"),
                addDetails("ten", "This is Ten"),
              ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget addDetails(
  String name,
  String description,
){
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}