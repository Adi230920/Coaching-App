import 'package:flutter/material.dart';

class SubjectsScreen extends StatelessWidget {
  final String course;
  const SubjectsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFF121212);
    final cardColor = const Color(0xFF1E1E1E);
    final accentColor = Colors.tealAccent;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.tealAccent),
        title: Text(
          '$course Subjects',
          style: const TextStyle(
            color: Colors.tealAccent,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildSubjectCard(context, 'Physics'),
            _buildSubjectCard(context, 'Chemistry'),
            _buildSubjectCard(context, 'Maths'),
            _buildSubjectCard(context, 'Biology'),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectCard(BuildContext context, String subject) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/student-chapters', arguments: subject);
        },
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.tealAccent.withOpacity(0.4)),
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
              subject,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
