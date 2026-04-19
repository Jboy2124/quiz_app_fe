import 'package:flutter/material.dart';
import 'package:quiz_app/components/header.dart';

class MainChildPage extends StatefulWidget {
  const MainChildPage({super.key});

  @override
  State<MainChildPage> createState() => _MainChildPageState();
}

class _MainChildPageState extends State<MainChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPage(),
    );
  }
}
