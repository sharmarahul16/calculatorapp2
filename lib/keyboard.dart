import 'package:flutter/material.dart';
import 'keyboard_button.dart';
import 'keyboard_rows.dart';

class Keyboard extends StatelessWidget {
  Keyboard({required this.onTap, required this.keyboardSigns});

  final CallbackButtonTap onTap;
  final List keyboardSigns;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: keyboardSigns.map((signs) {
        return KeyboardRows(
          rowsButtons: signs,
          onTap: onTap,
        );
      }).toList(),
    );
  }
}