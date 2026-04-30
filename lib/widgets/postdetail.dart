import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFFE4E6EB),
              child: Icon(Icons.share, color: Colors.black, size: 18),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/users/2.jpg"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Mathilda Rebus",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("8 min", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),

                Image.asset("assets/images/publications/ferrari.jpeg"),

                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Light of a Ferrari 458 in the streets of London. Look at this is amazing",
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/emojis/like.svg", height: 18),
                      const SizedBox(width: 4),
                      SvgPicture.asset("assets/images/emojis/heart.svg", height: 18),
                      const SizedBox(width: 4),
                      SvgPicture.asset("assets/images/emojis/laughing.svg", height: 18),
                      const SizedBox(width: 4),
                      SvgPicture.asset("assets/images/emojis/shocked.svg", height: 18),
                      const SizedBox(width: 4),
                      SvgPicture.asset("assets/images/emojis/sad.svg", height: 18),
                      const SizedBox(width: 4),
                      SvgPicture.asset("assets/images/emojis/angry.svg", height: 18),
                      const SizedBox(width: 8),
                      const Text("2.6k", style: TextStyle(color: Colors.grey)),
                      const Spacer(),
                      const Text(
                        "2.6k Comments",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                const Divider(),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Text(
                    "Comments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),

                comment(
                  "Moa Rotenb",
                  "12 min",
                  "Enzo Ferrari was not initially interested in the idea of producing road cars when he formed Scuderia",
                ),
                comment(
                  "Lucie Polis",
                  "10 min",
                  "Early in 1969, Fiat took a 50% stake in Ferrari. An immediate result was an increase in available investment funds.",
                ),
                comment(
                  "Laura Leporc",
                  "15 min",
                  "On 15 September 2012, 964 Ferrari cars worth over...",
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: Colors.white,
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/users/1.jpg"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Post a comment...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget comment(String name, String time, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage("assets/images/users/3.jpg"),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      time,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(text, style: const TextStyle(fontSize: 13)),
                const SizedBox(height: 4),
                const Text(
                  "Like   Reply",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}