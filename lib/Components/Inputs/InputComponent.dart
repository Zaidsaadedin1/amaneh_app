import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final String placeholder;
  final double width;
  final double height;
  final bool isPassword;
  final TextEditingController controller; // Added controller

  const InputComponent({
    Key? key,
    required this.placeholder,
    required this.controller, // Make controller a required parameter
    this.width = double.infinity,
    this.height = 56.0, // Default height for text fields
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller, // Use the passed controller
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: placeholder,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF93929), width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF93929), width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          suffixIcon: isPassword
              ? Icon(Icons.visibility_off, color: Color(0xFFF93929))
              : null,
        ),
      ),
    );
  }
}
