import 'package:flutter/material.dart';
import 'package:quiz_app/components/header.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPage(),
    );
  }
}
