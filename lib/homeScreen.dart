// Importaciones de  datos falsos
import 'package:facebook/data/fake_post.dart';
import 'package:facebook/widgets/createPost.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:facebook/widgets/quickactions.dart';
import 'package:facebook/widgets/stories.dart';
import 'package:facebook/widgets/topBar.dart';
import 'package:flutter/material.dart';

// StatelessWidget porque no maneja estado propio
class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  // Genera una lista de 2 posts falsos usando la función generateFakePost()
  // El "_" indica que el índice del loop no se usa
  final posts = List.generate(
    10,
    (_) => generateFakePost(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Color de fondo gris claro típico de Facebook
      backgroundColor: const Color(0xFFF0F2F5),

      body: SafeArea(
        child: ListView(
          children: [
            const TopBar(),
            const CreatePost(),
            const QuickActions(),
            const Stories(),


            // Convierte cada post de la lista en un widget
            ...posts.map(
              (post) => PostCard(post: post),
            ),
          ],
        ),
      ),
    );
  }
}