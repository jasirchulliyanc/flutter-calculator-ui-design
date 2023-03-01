import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {
  // const MyButton({super.key});
  final color;
  final buttonText;
  final TextColor;
  const MyButton({super.key, required this.color, this.buttonText, this.TextColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: TextColor),
            ),
          ),
        ),
      ),
    );
  }
}
