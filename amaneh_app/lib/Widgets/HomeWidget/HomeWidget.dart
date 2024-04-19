import 'package:amaneh_app/Widgets/LoginScreen/LoginScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // This will size the column to fit its children's size.
          children: <Widget>[
            // Make sure to replace 'path/to/your/image' with your actual image path
            Image.asset(
                'Images/logo.png'), // You need to provide a source for the image
            const SizedBox(
                height: 20), // Adds space between the image and the text
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                    0xFFF93929), // The Orange color code as the background color
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Change the radius here
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
