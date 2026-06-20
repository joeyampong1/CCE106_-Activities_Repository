import 'package:flutter/material.dart';
import 'login.dart'; // <-- Giusab ni

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Controllers for each input field
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _civilStatusController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();

  void _register() {
    // 1. Validation: Check if any field is empty
    if (_fullnameController.text.isEmpty ||
        _usernameController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty ||
        _genderController.text.isEmpty ||
        _civilStatusController.text.isEmpty ||
        _birthdateController.text.isEmpty) {
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill out all the fields')),
      );
      return;
    }

    // 2. Validation: Check if password and confirm password match
    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password does not match')),
      );
      return;
    }

    // If all validations pass, navigate to LoginPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  // Helper method for input decoration
  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task5 Ampong'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Full Name Field
              TextField(
                controller: _fullnameController,
                decoration: _inputDecoration('Full Name', Icons.person),
              ),
              const SizedBox(height: 15),

              // Username Field
              TextField(
                controller: _usernameController,
                decoration: _inputDecoration('Username', Icons.account_circle),
              ),
              const SizedBox(height: 15),

              // Password Field
              TextField(
                controller: _passwordController,
                decoration: _inputDecoration('Password', Icons.lock),
                obscureText: true,
              ),
              const SizedBox(height: 15),

              // Confirm Password Field
              TextField(
                controller: _confirmPasswordController,
                decoration: _inputDecoration('Confirm Password', Icons.lock_outline),
                obscureText: true,
              ),
              const SizedBox(height: 15),

              // Gender Field
              TextField(
                controller: _genderController,
                decoration: _inputDecoration('Gender', Icons.male_rounded),
              ),
              const SizedBox(height: 15),

              // Civil Status Field
              TextField(
                controller: _civilStatusController,
                decoration: _inputDecoration('Civil Status', Icons.people),
              ),
              const SizedBox(height: 15),

              // Birthdate Field (with showDatePicker on tap)
              TextField(
                controller: _birthdateController,
                decoration: _inputDecoration('Birthdate', Icons.calendar_today),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2025),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (pickedDate != null) {
                    setState(() {
                      _birthdateController.text =
                          "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
                    });
                  }
                },
              ),
              const SizedBox(height: 25),

              // Register Button
              ElevatedButton(
                onPressed: _register,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}