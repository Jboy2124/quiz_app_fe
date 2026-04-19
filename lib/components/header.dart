import 'package:flutter/material.dart';
import 'package:quiz_app/screens/signup.dart';

class HeaderPage extends StatelessWidget implements PreferredSizeWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.deepPurple,
      title: const Text(
        "My QUIZZES",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      actions: [
        PopupMenuButton<String>(
          icon: const Icon(Icons.settings, size: 24, color: Colors.white),
          onSelected: (value) {
            if (value == "signup") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            } else if (value == "Logout") {
              //logout
            }
          },
          itemBuilder: (BuildContext context) => [
            const PopupMenuItem(
              value: "signup",
              child: Row(
                children: [
                  Text("Signup", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Icon(Icons.add_circle_outline_outlined, size: 20),
                ],
              ),
            ),
            const PopupMenuItem(value: "logout", child: Text("Logout")),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
