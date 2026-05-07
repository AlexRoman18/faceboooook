import 'package:flutter/material.dart';
class PostCaption extends StatelessWidget {
  final String caption;

  const PostCaption({
    super.key,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(caption),
    );
  }
}