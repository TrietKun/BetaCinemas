import 'package:flutter/material.dart';

class AppBarDiscount extends StatelessWidget implements PreferredSizeWidget {
  // ignore: use_key_in_widget_constructors
  const AppBarDiscount({Key? key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Tin mới và ưu đãi',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.blue[300],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
