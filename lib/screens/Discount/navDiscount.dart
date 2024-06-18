import 'package:flutter/material.dart';
import '../Discount/discounts.dart';
import '../Discount/news.dart';

class NavDiscount extends StatefulWidget {
  const NavDiscount({Key? key}) : super(key: key);

  @override
  _NavDiscountState createState() => _NavDiscountState();
}

class _NavDiscountState extends State<NavDiscount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Số lượng tab
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.card_giftcard), text: 'Discounts'),
              Tab(icon: Icon(Icons.new_releases), text: 'News'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Discounts(),
            News(),
          ],
        ),
      ),
    );
  }
}
