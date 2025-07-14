import 'package:flutter/material.dart';

class TeacherChaptersScreen extends StatelessWidget {
  final String subject;
  const TeacherChaptersScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$subject Chapters'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue.shade100,
              child: const Text(
                'Manage Chapters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            _buildChapterBlock(context, 'Chapter 1'),
            _buildChapterBlock(context, 'Chapter 2'),
            _buildChapterBlock(context, 'Chapter 3'),
            _buildChapterBlock(context, 'Chapter 4'),
            _buildChapterBlock(context, 'Chapter 5'),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context, 2),
    );
  }

  Widget _buildChapterBlock(BuildContext context, String chapterName) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/teacher-content',
            arguments: chapterName,
          );
        },
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              chapterName,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
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
