import 'package:flutter/material.dart';

//imagen principal de un post
class PostImage extends StatelessWidget {
  final String image; // mostrar url

  const PostImage({
    super.key,
    required this.image, //URL
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,                    //imagen desde internet usando la URL
      width: double.infinity,   //ancho disponible pantalla
      fit: BoxFit.cover,        //imagen sin deformarse
    );
  }
}