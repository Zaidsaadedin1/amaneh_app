import 'package:amaneh_app/Components/Buttons/ButtonComponent.dart';
import 'package:amaneh_app/Components/Inputs/InputComponent.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
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
          const  SizedBox(height: 80), // Adjust the height as per your design
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
          const  SizedBox(height: 40), // Spacing after the title, adjust as needed
            // Using the custom InputField for text input
           const Row(
              children: [
                Expanded(
                  child: InputComponent(
                    placeholder: 'First Name',
                    // width: 160, // Optional, if you want to specify the width
                  ),
                ),
                SizedBox(width: 16), // Spacing between the first name and last name fields
                Expanded(
                  child: InputComponent(
                    placeholder: 'Last Name',
                    // width: 160, // Optional, if you want to specify the width
                  ),
                ),
              ],
            ),
          const  SizedBox(height: 16),
           const InputComponent(
              placeholder: 'Date of birth',
              // width: 330, // Optional, if you want to specify the width
            ),
           const SizedBox(height: 16),
           const InputComponent(
              placeholder: 'Phone Number',
              // width: 330, // Optional, if you want to specify the width
            ),
          const  SizedBox(height: 16),
          const  InputComponent(
              placeholder: 'Email',
              // width: 330, // Optional, if you want to specify the width
            ),
           const SizedBox(height: 16),
           const InputComponent(
              placeholder: 'Password',
              isPassword: true,
              // width: 330, // Optional, if you want to specify the width
            ),
           const SizedBox(height: 16),
           const InputComponent(
              placeholder: 'Confirm Password',
              isPassword: true,
              // width: 330, // Optional, if you want to specify the width
            ),
           const SizedBox(height: 16),
           const InputComponent(
              placeholder: 'Country',
              // width: 330, // Optional, if you want to specify the width
            ),
            // ... Insert dropdown or other widget for country selection
           const SizedBox(height: 32),
            // Using the custom RoundedButton for the sign-up button
            ButtonComponent(
              text: 'Sign up',
              onPressed: () {
                // TODO: Implement registration logic
              },
              // width: double.infinity, // The button will expand to fill the width
            ),
          ],
        ),
      ),
    );
  }
}
