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

    // FOTO DE PERFIL RANDOM
    userImage:
        "https://i.pravatar.cc/150?img=$randomUser",

    // FOTO RANDOM DEL POST
    postImage:
        "https://picsum.photos/500/300?random=$randomPost",

    // TEXTO RANDOM
    caption: faker.lorem.sentence(),

    // TIEMPO RANDOM
    time: "${random.nextInt(59) + 1} min",

    // NÚMEROS RANDOM
    likes: random.nextInt(5000),

    comments: random.nextInt(1000),

    shares: random.nextInt(500),
  );
}