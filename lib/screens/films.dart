import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/appBar_films.dart';
import './Films/catergory.dart';

// ignore: use_key_in_widget_constructors
class Films extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _FilmsState createState() => _FilmsState();
}

class _FilmsState extends State<Films> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(appBar: AppBarFilms(), body: Category()));
  }
}
