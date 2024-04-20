import 'package:amaneh_app/Widgets/RigesterScreen/RigesterScreen.dart';
import 'package:flutter/material.dart';
import 'package:amaneh_app/Dtos/UserDtos/LoginDTO.dart';
import 'package:amaneh_app/Services/UserService.dart';
import 'package:amaneh_app/Components/Buttons/ButtonComponent.dart';
import 'package:amaneh_app/Components/Inputs/InputComponent.dart';
import 'package:amaneh_app/Widgets/HomeWidget/HomePage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
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
            InputComponent(
              placeholder: 'Email',
              controller: _usernameController,
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Password',
              isPassword: true,
              controller: _passwordController,
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
              onPressed: _attemptLogin,
            ),
            const SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
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

  void _attemptLogin() {
    LoginDTO loginDTO = LoginDTO(
        email: _usernameController.text, password: _passwordController.text);

    UserService().login(loginDTO).then((userCredential) {
      // Navigate to the Home Page upon successful login
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    }).catchError((error) {
      // Handle errors or show an error message
      print('Login failed: $error');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Login Error"),
          content: const Text(
              "Failed to login. Please check your credentials and try again."),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        ),
      );
    });
  }
}
