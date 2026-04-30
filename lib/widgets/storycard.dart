import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String background;
  final String avatar;
  final String name;

  const StoryCard({
    super.key,
    required this.background,
    required this.avatar,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [

              Container(
                height: 120,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                    image: AssetImage(background),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                bottom: -18,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(avatar),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),


          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}