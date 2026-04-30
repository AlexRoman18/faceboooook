
import 'package:facebook/widgets/circleIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            "assets/images/facebook.svg",
            height: 60,
            width: 22,
            color: Colors.blue,
            fit: BoxFit.contain,
          ),
          Row(
            children: [
              const CircleIcon(
                icon: Icons.search,
                bgColor: Color.fromARGB(255, 146, 148, 154),
                iconColor: Color.fromARGB(255, 255, 255, 255),
              ),
              const SizedBox(width: 10),

              Stack(
                children: const [
                  CircleIcon(
                    icon: Icons.notifications,
                    bgColor: Color(0xFFF02849),
                    iconColor: Colors.white,
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: CircleAvatar(radius: 3, backgroundColor: Colors.red),
                  ),
                ],
              ),

              const SizedBox(width: 10),

              const CircleIcon(
                icon: Icons.group,
                bgColor: Color(0xFF1877F2),
                iconColor: Colors.white,
              ),

              const SizedBox(width: 10),

              const CircleIcon(
                icon: Icons.message,
                bgColor: Color(0xFF1877F2),
                iconColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
