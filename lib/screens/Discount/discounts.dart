import 'package:flutter/material.dart';
import '../../dataHash/events.dart';
import '../../widgets/listNews.dart';

class Discounts extends StatelessWidget {
  const Discounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListNews(listNews: ListEvents.listEvents),
    );
  }
}
