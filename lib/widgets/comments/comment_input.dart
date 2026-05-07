import 'package:flutter/material.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),

      color: Colors.white,

      child: Row(
        children: const [
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=50",
            ),
          ),

          SizedBox(width: 10),

          Expanded(
            child: Text(
              "Post a comment...",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          Icon(
            Icons.emoji_emotions_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}