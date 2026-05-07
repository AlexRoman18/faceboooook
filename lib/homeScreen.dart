import 'package:facebook/data/fake_post.dart';
import 'package:facebook/widgets/createPost.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:facebook/widgets/quickactions.dart';
import 'package:facebook/widgets/stories.dart';
import 'package:facebook/widgets/topBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final posts = List.generate(
    2,
    (_) => generateFakePost(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),

      body: SafeArea(
        child: ListView(
          children: [
            const TopBar(),
            const CreatePost(),
            const QuickActions(),
            const Stories(),
            ...posts.map(
              (post) => PostCard(post: post),
            ),
          ],
        ),
      ),
    );
  }
}