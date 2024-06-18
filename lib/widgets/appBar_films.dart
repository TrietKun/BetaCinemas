// ignore_for_file: file_names, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './nameUser.dart';

class AppBarFilms extends StatelessWidget implements PreferredSizeWidget {
  const AppBarFilms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.black, width: 1.0))),
          child: Row(
            children: [
              Expanded(
                // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
                child: Container(
                  child: const Padding(
                      padding: EdgeInsets.only(left: 10), child: Nameuser()),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 35,
                      fit: BoxFit.scaleDown,
                    )),
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
