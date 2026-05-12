import 'package:facebook/widgets/comments/comment_input.dart';
import 'package:facebook/widgets/comments/comment_item.dart';
import 'package:facebook/widgets/comments/comments_title.dart';
import 'package:facebook/widgets/posts/post_app_bar.dart';
import 'package:facebook/widgets/posts/post_caption.dart';
import 'package:facebook/widgets/posts/post_header.dart';
import 'package:facebook/widgets/posts/post_image.dart';
import 'package:facebook/widgets/posts/post_reactions.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:facebook/models/post_model.dart';


class PostDetail extends StatelessWidget {
  final PostModel post;

  const PostDetail({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

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

                  children: List.generate(3, (index) {
                    final name = faker.person.name();
                    final time = "${faker.randomGenerator.integer(20, min: 1)} min";
                    final text = faker.lorem.sentence();
                    final avatarPath =
                        "https://i.pravatar.cc/150?img=${faker.randomGenerator.integer(70, min: 1)}";

                    return CommentItem(
                      name: name,
                      time: time,
                      text: text,
                      avatarPath: avatarPath,
                    );
                  }),
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