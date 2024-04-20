import 'package:flutter/material.dart';
import 'package:amaneh_app/Components/Buttons/ButtonComponent.dart';
import 'package:amaneh_app/Components/Inputs/InputComponent.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  void _registerUser() {
    if (_passwordController.text == _confirmPasswordController.text) {
      // Assuming you have a function to handle registration
      // UserService().register(YourDTO(parameters...))
      print("Registration successful");
    } else {
      print("Passwords do not match");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(), // Assumes Navigator is being used
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: InputComponent(
                    placeholder: 'First Name',
                    controller: _firstNameController,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: InputComponent(
                    placeholder: 'Last Name',
                    controller: _lastNameController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Date of birth',
              controller: _dobController,
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Phone Number',
              controller: _phoneNumberController,
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Email',
              controller: _emailController,
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Password',
              isPassword: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Confirm Password',
              isPassword: true,
              controller: _confirmPasswordController,
            ),
            const SizedBox(height: 16),
            InputComponent(
              placeholder: 'Country',
              controller: _countryController,
            ),
            const SizedBox(height: 32),
            ButtonComponent(
              text: 'Sign up',
              onPressed: _registerUser,
            ),
          ],
        ),
      ),
    );
  }
}
