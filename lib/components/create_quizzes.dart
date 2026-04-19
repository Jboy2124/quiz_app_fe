import 'package:flutter/material.dart';
import 'package:quiz_app/components/header.dart';

class CreateQuizzesPage extends StatefulWidget {
  const CreateQuizzesPage({super.key});

  @override
  State<CreateQuizzesPage> createState() => _CreateQuizzesPageState();
}

class _CreateQuizzesPageState extends State<CreateQuizzesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPage(),
    );
  }
}
