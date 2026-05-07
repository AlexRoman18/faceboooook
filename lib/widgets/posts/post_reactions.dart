import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';        // Librería para renderizar imágenes SVG
import 'package:facebook/models/post_model.dart';

class PostReactions extends StatelessWidget {
  final PostModel post; // Recibe el post

  const PostReactions({
    super.key,
    required this.post,
  });

  Widget reaction(String asset) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: SvgPicture.asset(
        asset,
        height: 18, // Todos los emojis tienen el mismo tamaño
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      child: Row(
        children: [
          reaction("assets/images/emojis/like.svg"),
          reaction("assets/images/emojis/heart.svg"),
          reaction("assets/images/emojis/laughing.svg"),
          reaction("assets/images/emojis/shocked.svg"),
          reaction("assets/images/emojis/sad.svg"),
          reaction("assets/images/emojis/angry.svg"),

          const SizedBox(width: 8),
          Text(
            "${post.likes}",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),

          const Spacer(),

          Text(
            "${post.comments} Comments",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}