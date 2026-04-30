import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReactionRow extends StatelessWidget {
  const ReactionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/emojis/like.svg", height: 20),
          const SizedBox(width: 5),
          SvgPicture.asset("assets/images/emojis/heart.svg", height: 20),
          const SizedBox(width: 5),
          SvgPicture.asset("assets/images/emojis/laughing.svg", height: 20),
          const SizedBox(width: 5),
          SvgPicture.asset("assets/images/emojis/shocked.svg", height: 20),
          const SizedBox(width: 5),
          SvgPicture.asset("assets/images/emojis/sad.svg", height: 20),
          const SizedBox(width: 5),
          SvgPicture.asset("assets/images/emojis/angry.svg", height: 20),
          const Spacer(),
          const Text(
            "2.6k Comments  2.7k Shares",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
