import 'package:flutter/material.dart';
import 'package:todo_app/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        centerTitle: true,
        title: const Text("To Do"),
      ),
      body: ListView(
        children: const [
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
          ToDoTile(),
        ],
      ),
    );
  }
}