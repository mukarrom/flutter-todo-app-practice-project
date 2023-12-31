import 'package:flutter/material.dart';
import 'package:to_do_app/ToDoPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do",
      theme: ThemeData(primarySwatch: Colors.green),
      home: TodoPage(),
    );
  }
}
