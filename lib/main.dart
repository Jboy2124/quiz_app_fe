import 'package:flutter/material.dart';
import 'package:quiz_app/components/create_quizzes.dart';
import 'package:quiz_app/screens/child.dart';
import 'package:quiz_app/screens/login.dart';
import 'package:quiz_app/screens/parents.dart';
import 'package:quiz_app/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int user = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignupPage(),
        "/child": (context) => const MainChildPage(),
        "/parent": (context) => const MainParentPage(),
        "/create-quiz": (context) => const CreateQuizzesPage(),
      },
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}
