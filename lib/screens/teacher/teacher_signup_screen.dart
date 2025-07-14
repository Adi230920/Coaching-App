import 'package:flutter/material.dart';

class TeacherSignupScreen extends StatelessWidget {
  const TeacherSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Signup'),
        backgroundColor: Colors.blue, // Customize app bar color
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
              // Special Access Key Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Special Access Key',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Placeholder for submit action
                  Navigator.pushNamed(context, '/teacher-login');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ), // Customize button size
                  backgroundColor: Colors.blue, // Customize button color
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
