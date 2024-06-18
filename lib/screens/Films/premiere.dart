import 'package:flutter/material.dart';
import '../../widgets/listFilms.dart';
import '../../dataHash/premierefilms.dart';

class Premiere extends StatelessWidget {
  const Premiere({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: ListFilms(
          listFilmShowing: ListFilmPremiere.listFilmPremiere,
        ));
  }
}
