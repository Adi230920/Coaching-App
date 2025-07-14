import 'package:flutter/material.dart';

class TeacherCoursesScreen extends StatelessWidget {
  const TeacherCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Courses'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue.shade100,
              child: const Text(
                'Manage Courses',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1,
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
        Navigator.pushNamed(
          context,
          '/teacher-subjects',
          arguments: courseName,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            courseName,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
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
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/teacher-courses');
            break;
          case 1:
            Navigator.pushNamed(
              context,
              '/teacher-subjects',
              arguments: '8th Std ICSE',
            );
            break;
          case 2:
            Navigator.pushNamed(
              context,
              '/teacher-chapters',
              arguments: 'Physics',
            );
            break;
          case 3:
            Navigator.pushNamed(
              context,
              '/teacher-content',
              arguments: 'Chapter 1',
            );
            break;
        }
      },
    );
  }
}
