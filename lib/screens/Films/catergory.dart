import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import './comingSoon.dart';
import './showing.dart';
import './premiere.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 500),
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: const TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,
              tabAlignment: TabAlignment.fill,
              tabs: [
                Tab(
                  child: Text(
                    "SẮP CHIẾU",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "ĐANG CHIẾU",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "SUẤT CHIẾU SỚM",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: const Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    ComingSoon(),
                    Showing(),
                    Premiere(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
