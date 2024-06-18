import 'package:flutter/material.dart';

class FilmItem extends StatelessWidget {
  const FilmItem({Key? key, required this.title, required this.color}) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        body: Center(
          child: Text(title),
        ));
  }
}