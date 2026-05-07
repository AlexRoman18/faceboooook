import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String image;

  const PostImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}