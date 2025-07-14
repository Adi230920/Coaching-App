import 'package:flutter/material.dart';

class SubjectsScreen extends StatelessWidget {
  final String course;
  const SubjectsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$course Subjects'),
        backgroundColor: Colors.green, // Customize app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Customize padding
        child: ListView(
          children: [
            // Subjects Header
            Container(
              padding: const EdgeInsets.all(8.0), // Customize header padding
              color: Colors.green.shade100, // Customize header color
              child: Text(
                'Subjects',
                style: const TextStyle(
                  fontSize: 20, // Customize font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20), // Customize spacing
            // Subject Blocks
            _buildSubjectBlock(context, 'Physics'),
            _buildSubjectBlock(context, 'Chemistry'),
            _buildSubjectBlock(context, 'Maths'),
            _buildSubjectBlock(context, 'Biology'),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context, 1),
    );
  }

  Widget _buildSubjectBlock(BuildContext context, String subjectName) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16.0,
      ), // Customize vertical spacing
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/chapters', arguments: subjectName);
        },
        child: Container(
          height: 100, // Customize block height
          decoration: BoxDecoration(
            color: Colors.green.shade200, // Customize block color
            borderRadius: BorderRadius.circular(10), // Customize border radius
          ),
          child: Center(
            child: Text(
              subjectName,
              style: const TextStyle(
                fontSize: 18, // Customize font size
                color: Colors.white, // Customize text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context, int currentIndex) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
        BottomNavigationBarItem(icon: Icon(Icons.subject), label: 'Subjects'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Chapters'),
        BottomNavigationBarItem(
          icon: Icon(Icons.content_paste),
          label: 'Content',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.green, // Customize selected item color
      unselectedItemColor: Colors.grey, // Customize unselected item color
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/courses');
            break;
          case 1:
            Navigator.pushNamed(
              context,
              '/subjects',
              arguments: '8th Std ICSE',
            );
            break;
          case 2:
            Navigator.pushNamed(context, '/chapters', arguments: 'Physics');
            break;
          case 3:
            Navigator.pushNamed(context, '/content', arguments: 'Chapter 1');
            break;
        }
      },
    );
  }
}
