import 'package:facebook/widgets/comments/comment_input.dart';
import 'package:facebook/widgets/comments/comment_item.dart';
import 'package:facebook/widgets/comments/comments_title.dart';
import 'package:facebook/widgets/posts/post_app_bar.dart';
import 'package:facebook/widgets/posts/post_caption.dart';
import 'package:facebook/widgets/posts/post_header.dart';
import 'package:facebook/widgets/posts/post_image.dart';
import 'package:facebook/widgets/posts/post_reactions.dart';
import 'package:flutter/material.dart';
import 'package:facebook/models/post_model.dart';


class PostDetail extends StatelessWidget {
  final PostModel post;

  const PostDetail({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: const PostAppBar(),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                PostHeader(post: post),

                PostImage(image: post.postImage),

                PostCaption(caption: post.caption),

                PostReactions(post: post),

                const Divider(),

                const CommentsTitle(),

                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: const [
                    CommentItem(
                      name: "Moa Rotenb",
                      time: "12 min",
                      text: "Amazing picture!",
                      avatarPath:
                          "https://i.pravatar.cc/150?img=11",
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: CommentItem(
                        name: "Lucie Polis",
                        time: "10 min",
                        text:
                            "This looks incredible 🔥",
                        avatarPath:
                            "https://i.pravatar.cc/150?img=25",
                      ),
                    ),

                    CommentItem(
                      name: "Laura Leporc",
                      time: "15 min",
                      text: "Beautiful post!",
                      avatarPath:
                          "https://i.pravatar.cc/150?img=33",
                    ),
                  ],
                ),
              ],
            ),
          ),

          const CommentInput(),
        ],
      ),
    );
  }
}