import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  final String name;
  final String time;
  final String text;
  final String avatarPath;

  const CommentItem({
    super.key,
    required this.name,
    required this.time,
    required this.text,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(avatarPath),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(width: 6),

                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 2),

                Text(
                  text,
                  style: const TextStyle(fontSize: 13),
                ),

                const SizedBox(height: 4),

                const Text(
                  "Like   Reply",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}