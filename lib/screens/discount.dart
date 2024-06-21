import 'package:flutter/material.dart';
import '../widgets/appBar_discount.dart';
import './Discount/navDiscount.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: AppBarDiscount(), body: NavDiscount());
  }
}
