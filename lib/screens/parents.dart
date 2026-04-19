import 'package:flutter/material.dart';
import 'package:quiz_app/components/header.dart';
import 'package:quiz_app/models/quiz.dart';

class MainParentPage extends StatefulWidget {
  const MainParentPage({super.key});

  @override
  State<MainParentPage> createState() => _MainParentPageState();
}

class _MainParentPageState extends State<MainParentPage> {
  final List<Quiz> quizzes = [
    Quiz(
      subject: "Filipino",
      description: "Sibika at Kultura",
      status: 'pending',
    ),
    Quiz(subject: "AP", description: "Kainan na", status: 'done'),
    Quiz(subject: 'Math', description: 'Algebra', status: 'in progress'),
    Quiz(subject: "Reading", description: "Harry potter", status: 'done')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPage(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: quizzes.length,
            itemBuilder: (context, index) {
              final quiz = quizzes[index];

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                elevation: 3,
                child: ListTile(
                  style: ListTileStyle.list,
                  title: Text(
                    quiz.subject,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(quiz.description),
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: quiz.status == "done"
                          ? Colors.green
                          : Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      quiz.status,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, "/create-quiz");
        },
        icon: Icon(Icons.add),
        label: Text("Create quiz"),
      ),
    );
  }
}
