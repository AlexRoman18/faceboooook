import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: Row(
        children: const [
          CircleAvatar(backgroundImage: AssetImage("assets/images/users/1.jpg")),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              "¿What's on your mind, Lisa?",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}