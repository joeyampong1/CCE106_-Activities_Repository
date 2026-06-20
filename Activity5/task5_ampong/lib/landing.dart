import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final String username;
  final String password;

  const LandingPage({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task5 Ampong'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displays the username passed from Login Page
            Text(
              "user: $username",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),

            // Displays the password passed from Login Page
            Text(
              "Password: $password",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),

            // Button to return to Login Page using Navigator.pop
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}