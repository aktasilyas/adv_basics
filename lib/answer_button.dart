import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
   const AnswerButton({super.key,required this.text, required this.onTab});

  final String text;
  final void Function() onTab;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 34, 0, 88),
        foregroundColor: Colors.white,
      ),
      child:  Text(text),
    );
  }
}
