import 'package:flutter/material.dart';

class StudentSignupScreen extends StatelessWidget {
  const StudentSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkBackground = const Color(0xFF121212);
    final inputFillColor = const Color(0xFF1E1E1E);
    final primaryColor = Colors.tealAccent;

    return Scaffold(
      backgroundColor: darkBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Student Signup'),
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.tealAccent,
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.tealAccent),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: ListView(
            children: [
              _buildInputField(label: 'Name', fillColor: inputFillColor),
              const SizedBox(height: 16),
              _buildInputField(label: 'Email', fillColor: inputFillColor),
              const SizedBox(height: 16),
              _buildInputField(label: 'Phone No', fillColor: inputFillColor),
              const SizedBox(height: 16),
              _buildInputField(label: 'Class/Grade', fillColor: inputFillColor),
              const SizedBox(height: 16),
              _buildInputField(
                label: 'Password',
                fillColor: inputFillColor,
                obscure: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/student-courses');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required Color fillColor,
    bool obscure = false,
  }) {
    return TextFormField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.tealAccent),
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.tealAccent),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.tealAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
