import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReactionRow extends StatelessWidget {
  final int likes;
  final int comments;
  final int shares;

  const ReactionRow({
    super.key,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  String formatNumber(int number) {
    if (number >= 1000) {
      return "${(number / 1000).toStringAsFixed(1)}k";
    }
    return number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

      child: Row(
        children: [
          // LIKE
          SvgPicture.asset("assets/images/emojis/like.svg", height: 20),

          const SizedBox(width: 5),

          // HEART CON PUNTITO
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              SvgPicture.asset("assets/images/emojis/heart.svg", height: 20),

              Positioned(
                bottom: -6,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),

          SvgPicture.asset("assets/images/emojis/laughing.svg", height: 20),

          const SizedBox(width: 5),

          SvgPicture.asset("assets/images/emojis/shocked.svg", height: 20),

          const SizedBox(width: 5),

          SvgPicture.asset("assets/images/emojis/sad.svg", height: 20),

          const SizedBox(width: 5),

          SvgPicture.asset("assets/images/emojis/angry.svg", height: 20),

          const SizedBox(width: 8),

          Text(formatNumber(likes), style: const TextStyle(color: Colors.grey)),

          const Spacer(),

          Text(
            "${formatNumber(comments)} Comments  ${formatNumber(shares)} Shares",
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
