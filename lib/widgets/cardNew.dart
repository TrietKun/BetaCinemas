import 'package:flutter/material.dart';

class CardNew extends StatelessWidget {
  const CardNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset("assets/images/bn1.png"),
        title: const Text("News 1"),
      ),
    );
  }
}
