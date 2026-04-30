import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/1.jpeg",
            avatar: "assets/images/users/1.jpg",
            name: "Laura",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/2.jpeg",
            avatar: "assets/images/users/2.jpg",
            name: "Alix",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/3.jpeg",
            avatar: "assets/images/users/3.jpg",
            name: "Moa",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/4.jpeg",
            avatar: "assets/images/users/4.jpg",
            name: "Lucie",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/5.jpeg",
            avatar: "assets/images/users/5.jpg",
            name: "Annie",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/6.jpeg",
            avatar: "assets/images/users/6.jpg",
            name: "Annie",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/1.jpeg",
            avatar: "assets/images/users/7.jpg",
            name: "Annie",
          ),
          SizedBox(width: 11),
          StoryCard(
            background: "assets/images/wallpapers/2.jpeg",
            avatar: "assets/images/users/8.jpg",
            name: "Annie",
          ),
          SizedBox(width: 11),
        ],
      ),
    );
  }
}
