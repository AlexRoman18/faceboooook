import 'package:facebook/widgets/postdetail.dart';
import 'package:facebook/widgets/reactionrow.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const PostDetail()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/users/2.jpg"),
              ),
              title: Text("Mathilda Rebus"),
              subtitle: Text("8 min"),
            ),
            Image.asset("assets/images/publications/ferrari.jpeg"),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Light of a Ferrari 458 in the streets of London. Look at this is amazing",
              ),
            ),
            const ReactionRow(),
          ],
        ),
      ),
    );
  }
}