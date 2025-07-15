import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  final String chapter;
  const ContentScreen({super.key, required this.chapter});

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
          '$chapter Content',
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
            _buildContentCard(context, 'Study Material'),
            _buildContentCard(context, 'Notes'),
            _buildContentCard(context, 'PPTs'),
            _buildContentCard(context, 'Tests'),
          ],
        ),
      ),
    );
  }

  Widget _buildContentCard(BuildContext context, String contentType) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () {
          // Placeholder for actual navigation to content details
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
              contentType,
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
