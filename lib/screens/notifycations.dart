import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Notifycations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông báo',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[300],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(
              Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
