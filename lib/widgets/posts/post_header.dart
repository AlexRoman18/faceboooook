import 'package:flutter/material.dart';
import 'package:facebook/models/post_model.dart';

class PostHeader extends StatelessWidget {
  final PostModel post;

  const PostHeader({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),

      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(post.userImage),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              post.userName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Text(
            post.time,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}