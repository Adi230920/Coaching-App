import 'package:flutter/material.dart';

class ChaptersScreen extends StatelessWidget {
  final String subject;
  const ChaptersScreen({super.key, required this.subject});

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
        iconTheme: const IconThemeData(color: Colors.tealAccent),
        centerTitle: true,
        title: Text(
          '$subject Chapters',
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
            _buildChapterCard(context, 'Chapter 1'),
            _buildChapterCard(context, 'Chapter 2'),
            _buildChapterCard(context, 'Chapter 3'),
            _buildChapterCard(context, 'Chapter 4'),
            _buildChapterCard(context, 'Chapter 5'),
          ],
        ),
      ),
    );
  }

  Widget _buildChapterCard(BuildContext context, String chapterName) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/student-content',
            arguments: chapterName,
          );
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
              chapterName,
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
