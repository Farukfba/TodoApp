import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(24,),
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(12)
        ),
        child:  const Row(
          children: [

            //checkbox
            //Checkbox(value: , onChanged: onChanged)

            // task name
            Text("We are progressing init?" " " "Let keep pushing"),
          ],
        ),
      ),
    );
  }
}