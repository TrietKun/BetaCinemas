import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Voucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('Voucher của bạn',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        //bên phải của appBar
        actions: [
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              print('Voucher');
            },
            icon: const Icon(Icons.add_circle_outline,
                size: 30, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              print('Voucher');
            },
            icon: const Icon(Icons.calendar_month_outlined,
                size: 30, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(5), // Bo góc với bán kính 10
          ),
          child: const Padding(
            padding: EdgeInsets.all(7),
            child: Text('Voucher',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
