import 'package:flutter/material.dart';
import '../widgets/appBar_discount.dart';
import './Discount/navDiscount.dart';

class Discount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarDiscount(), body: const NavDiscount());
  }
}
