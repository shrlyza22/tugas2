import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Student Info")),
        body: Center(
          child: StudentCard(name: "Sheren Aulia Azahra", major: "S1 Teknologi Informasi"),
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  final String name;
  final String major;

  const StudentCard({super.key, required this.name, required this.major});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Name: $name", style: TextStyle(fontSize: 20)),
            Text("Major: $major", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

