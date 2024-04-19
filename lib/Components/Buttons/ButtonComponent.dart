import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;

  const ButtonComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFFF93929), // Default to orange color
    this.textColor = Colors.white, // Default to white color
    this.width = double.infinity, // Default to max width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Use the width passed to the constructor
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textColor),
        ),
      ),
    );
  }
}
