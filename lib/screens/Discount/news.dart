import 'package:flutter/material.dart';
import '../../dataHash/news.dart';
import '../../widgets/listNews.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListNews(listNews: ListNewss.listNews),
    );
  }
}
