import 'package:flutter/material.dart';
import 'package:facebook/models/post_model.dart';

// Widget que muestra la cabecera de un post: foto de perfil, nombre del usuario y tiempo de publicación
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
            backgroundImage: NetworkImage(post.userImage), // Carga desde internet
          ),

          const SizedBox(width: 10),

          // Expanded evita overflow si el nombre es muy largo
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