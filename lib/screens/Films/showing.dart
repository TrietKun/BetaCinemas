import 'package:flutter/material.dart';
import '../../dataHash/showingfilms.dart';
import '../../widgets/listFilms.dart';

class Showing extends StatelessWidget {
  const Showing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        body: ListFilms(
          listFilmShowing: ListFilmShowing.listFilmShowing,
        ));
  }
}
