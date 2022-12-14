import 'package:anota_tudo/utilitis/dialog_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.lightBlue[50],
        content: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: " Adicionar um novo task",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DialogButton(text: "Salvar", onPressed: onSave),
                    const SizedBox(width: 8),
                    DialogButton(text: "Cancelar", onPressed: onCancel),
                  ],
                ),
              ],
            )));
  }
}
