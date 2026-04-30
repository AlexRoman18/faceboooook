import 'package:facebook/widgets/createPost.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:facebook/widgets/quickactions.dart';
import 'package:facebook/widgets/stories.dart';
import 'package:facebook/widgets/topBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            const TopBar(),
            CreatePost(),
            QuickActions(),
            Stories(),
            Expanded(child: ListView(children: [PostCard()])),
          ],
        ),
      ),
    );
  }
}
