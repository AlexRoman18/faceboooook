import 'package:flutter/material.dart';

class CommentsTitle extends StatelessWidget {
  const CommentsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      child: Text(
        "Comments",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}