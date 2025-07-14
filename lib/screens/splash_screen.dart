import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to RoleSelectionScreen after 2 seconds
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/role-selection');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use Image.asset for the app icon
            Image.asset(
              'assets/icon/app_icon.png',
              width: 100, // Customize logo width
              height: 100, // Customize logo height
            ),
            const SizedBox(height: 20), // Customize spacing
            const Text(
              'Coaching Class App',
              style: TextStyle(
                fontSize: 24, // Customize font size
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Customize text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
