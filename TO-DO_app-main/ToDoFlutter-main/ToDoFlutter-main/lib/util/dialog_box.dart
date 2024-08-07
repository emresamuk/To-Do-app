import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
  Key? key,
  required this.controller,
  required this.onSave,
  required this.onCancel,
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[300],
      content: Container(
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Görev ekleyin",
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                MyButton(text: "Kaydet", onPressed: onSave),

                const SizedBox(width: 8),

                MyButton(text: "İptal", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
