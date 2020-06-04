import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrum Board App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.accessibility_new ), text: "Emp 1",),
              Tab(icon: Icon(Icons.accessibility_new ), text: "Emp 2",),
              Tab(icon: Icon(Icons.accessibility_new ), text: "Emp 3",),
              Tab(icon: Icon(Icons.accessibility_new ), text: "Emp 4",),
              Tab(icon: Icon(Icons.accessibility_new ), text: "Emp 5"),
            ],
          ),
          title: Text('Scrum Board App - Task Management'),
        ),
        body: TabBarView(
          children: [
            Center( child: Text("Task 1")),
            Center( child: Text("Task 2")),
            Center( child: Text("Task 3")),
            Center( child: Text("Task 4")),
            Center( child: Text("Task 5")),
          ],
        ),
      ),
    );
  }
}