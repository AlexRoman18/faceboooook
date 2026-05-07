import 'dart:math';

import 'package:faker/faker.dart';
import 'package:facebook/models/post_model.dart';

final faker = Faker();
final random = Random();

PostModel generateFakePost() {
  final randomUser = random.nextInt(70);
  final randomPost = random.nextInt(1000);

  return PostModel(
    userName: faker.person.name(),

  
    userImage:
        "https://i.pravatar.cc/150?img=$randomUser",

  
    postImage:
        "https://picsum.photos/500/300?random=$randomPost",

    caption: faker.lorem.sentence(),

    time: "${random.nextInt(59) + 1} min",

    likes: random.nextInt(5000),

    comments: random.nextInt(1000),

    shares: random.nextInt(500),
  );
}