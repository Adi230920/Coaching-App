import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/teacher/teacher_signup_screen.dart';
import 'screens/teacher/teacher_login_screen.dart';
import 'screens/student/student_signup_screen.dart';
import 'screens/student/student_home/courses_screen.dart';
import 'screens/student/student_home/subjects_screen.dart';
import 'screens/student/student_home/chapters_screen.dart';
import 'screens/student/student_home/content_screen.dart';
import 'screens/teacher/teacher_home/teacher_courses_screen.dart';
import 'screens/teacher/teacher_home/teacher_subjects_screen.dart';
import 'screens/teacher/teacher_home/teacher_chapters_screen.dart';
import 'screens/teacher/teacher_home/teacher_content_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coaching App',
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(
          primary: Colors.teal,
          secondary: Colors.amber,
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          elevation: 0,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF1E1E1E),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          labelStyle: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
            padding: const EdgeInsets.symmetric(vertical: 14),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/role-selection': (context) => const RoleSelectionScreen(),
        '/teacher-signup': (context) => const TeacherSignupScreen(),
        '/teacher-login': (context) => const TeacherLoginScreen(),
        '/student-signup': (context) => const StudentSignupScreen(),
        '/student-courses': (context) => const CoursesScreen(),
        '/student-subjects': (context) => const SubjectsScreen(course: ''),
        '/student-chapters': (context) => const ChaptersScreen(subject: ''),
        '/student-content': (context) => const ContentScreen(chapter: ''),
        '/teacher-courses': (context) => const TeacherCoursesScreen(),
        '/teacher-subjects': (context) =>
            const TeacherSubjectsScreen(course: ''),
        '/teacher-chapters': (context) =>
            const TeacherChaptersScreen(subject: ''),
        '/teacher-content': (context) =>
            const TeacherContentScreen(chapter: ''),
      },
    );
  }
}
