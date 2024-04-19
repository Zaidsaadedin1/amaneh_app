import 'package:amaneh_app/Components/Buttons/ButtonComponent.dart';
import 'package:amaneh_app/Components/Inputs/InputComponent.dart';
import 'package:amaneh_app/Widgets/RigesterScreen/RigesterScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(), // Assumes Navigator is being used
      ), // Spacing after the title, adjust as needed
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80), // Adjust the height as per your design
            const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const InputComponent(
              placeholder: 'Username',
              // width: 300, // You can specify the width if you want
            ),
            const SizedBox(height: 16),
            const InputComponent(
              placeholder: 'Password',
              isPassword: true,
              width: 300, // You can specify the width if you want
            ),
            TextButton(
              onPressed: () {
                // TODO: Add functionality for "Forget your password?"
              },
              child: const Text(
                'Forget your password?',
                style: TextStyle(color: Color(0xFFF93929)),
              ),
            ),
            const SizedBox(height: 32),
            ButtonComponent(
              text: 'Log In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
            ),
            const SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: () {
                  // TODO: Navigate to sign up screen
                },
                child: const Text(
                  "Don’t have an account? Sign Up",
                  style: TextStyle(color: Color(0xFFF93929)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
