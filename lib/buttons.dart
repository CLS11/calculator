import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    required this.color,
    required this.textColor,
    required this.buttonText,
    this.buttonTapped,
    super.key,
  });

  final Color color;
  final Color textColor;
  final String buttonText;
  final VoidCallback? buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
