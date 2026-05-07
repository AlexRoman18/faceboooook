class PostModel {
  final String userName;
  final String userImage;
  final String postImage;
  final String caption;
  final String time;
  final int likes;
  final int comments;
  final int shares;

  PostModel({
    required this.userName,
    required this.userImage,
    required this.postImage,
    required this.caption,
    required this.time,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}