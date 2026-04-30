import 'package:facebook/widgets/actionsItem.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ActionItem(icon: Icons.photo, label: "Gallery", color: Colors.green),
          ActionItem(
            icon: Icons.person_add,
            label: "Tag Friends",
            color: Colors.blue,
          ),
          ActionItem(icon: Icons.videocam, label: "Live", color: Colors.red),
        ],
      ),
    );
  }
}
