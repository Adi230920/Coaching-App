import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: Colors.green, // Customize app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Customize padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Courses Header
            Container(
              padding: const EdgeInsets.all(8.0), // Customize header padding
              color: Colors.green.shade100, // Customize header color
              child: const Text(
                'Courses',
                style: TextStyle(
                  fontSize: 20, // Customize font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20), // Customize spacing
            // Course Blocks
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Customize number of columns
                crossAxisSpacing: 16, // Customize horizontal spacing
                mainAxisSpacing: 16, // Customize vertical spacing
                childAspectRatio: 1, // Customize block aspect ratio (square)
                children: [
                  _buildCourseBlock(context, '8th Std ICSE'),
                  _buildCourseBlock(context, '9th Std ICSE'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context, 0),
    );
  }

  Widget _buildCourseBlock(BuildContext context, String courseName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/subjects', arguments: courseName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade200, // Customize block color
          borderRadius: BorderRadius.circular(10), // Customize border radius
        ),
        child: Center(
          child: Text(
            courseName,
            style: const TextStyle(
              fontSize: 16, // Customize font size
              color: Colors.white, // Customize text color
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
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
