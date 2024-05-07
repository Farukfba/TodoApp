import 'package:flutter/material.dart';
import 'package:todo_app/utilities/button.dart';

class DialogBox extends StatelessWidget {
   DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });
  final  controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.teal[800],
      content: Container(
        height: 120,
        width: 300,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
              TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                hintText: "Create a new task",
              ),
            ),
            // buttons - save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save button
                Button(text: "Save", onPressed: onSave,),
                const SizedBox(width: 122,),
                //cancel button
                Button(text: "Cancel", onPressed: onCancel,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
