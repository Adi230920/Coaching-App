import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Role'),
        backgroundColor: Colors.blue, // Customize app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Teacher Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/teacher-signup');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ), // Customize button size
                backgroundColor: Colors.blue, // Customize button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Customize border radius
                ),
              ),
              child: const Text(
                'Teacher',
                style: TextStyle(
                  fontSize: 18, // Customize font size
                  color: Colors.white, // Customize text color
                ),
              ),
            ),
            const SizedBox(height: 20), // Customize spacing
            // Student Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/student-signup');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ), // Customize button size
                backgroundColor: Colors.green, // Customize button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Customize border radius
                ),
              ),
              child: const Text(
                'Student',
                style: TextStyle(
                  fontSize: 18, // Customize font size
                  color: Colors.white, // Customize text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
