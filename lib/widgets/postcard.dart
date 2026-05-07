import 'package:facebook/models/post_model.dart';
//import 'package:facebook/widgets/postdetail.dart';
import 'package:facebook/widgets/reactionrow.dart';

import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (_) => PostDetail(post: post),
      //     ),
      //   );
      // },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(post.userImage),
              ),
              title: Text(post.userName),
              subtitle: Text(post.time),
            ),

            Image.network(
              post.postImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(post.caption),
            ),

            ReactionRow(
              likes: post.likes,
              comments: post.comments,
              shares: post.shares,
            ),
          ],
        ),
      ),
    );
  }
}