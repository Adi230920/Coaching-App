import 'package:flutter/material.dart';

class StudentSignupScreen extends StatelessWidget {
  const StudentSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Signup'),
        backgroundColor: Colors.green, // Customize app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Customize padding
        child: Form(
          child: ListView(
            children: [
              // Name Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(), // Customize border
                ),
                style: const TextStyle(fontSize: 16), // Customize font size
              ),
              const SizedBox(height: 16), // Customize spacing
              // Email Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Phone No Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone No',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Coaching Class Name Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Coaching Class Name',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Teacher Name Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Teacher Name',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to CoursesScreen (auto-login simulation)
                  Navigator.pushNamed(context, '/courses');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ), // Customize button size
                  backgroundColor: Colors.green, // Customize button color
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 18, // Customize font size
                    color: Colors.white, // Customize text color
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
