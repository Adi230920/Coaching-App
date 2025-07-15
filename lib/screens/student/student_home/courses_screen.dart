import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFF121212);
    final cardColor = const Color(0xFF1E1E1E);
    final accentColor = Colors.tealAccent;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('My Courses'),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.tealAccent,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.tealAccent),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
          children: [
            _buildCourseCard(context, '8th Std ICSE'),
            _buildCourseCard(context, '9th Std ICSE'),
            _buildCourseCard(context, '10th Std ICSE'),
            _buildCourseCard(context, '11th Std ISC'),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseCard(BuildContext context, String courseName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/student-subjects',
          arguments: courseName,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.tealAccent.withOpacity(0.5)),
          boxShadow: [
            BoxShadow(
              color: Colors.tealAccent.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            courseName,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
