import 'package:flutter/material.dart';
class PostAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      // Botón regresar a la pantalla anterior
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context); // Regresa a la pantalla anterior al presionar
        },
      ),

      // Botones del lado derecho de la AppBar
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFFE4E6EB),
            child: Icon(
              Icons.share,
              color: Colors.black,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}