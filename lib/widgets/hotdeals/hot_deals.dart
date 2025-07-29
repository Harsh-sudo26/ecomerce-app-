import 'package:ecommerce/colors.dart';
import 'package:flutter/material.dart';

class HotDeals extends StatefulWidget {
  const HotDeals({super.key});

  @override
  State<HotDeals> createState() => _HotDealsState();
}

class _HotDealsState extends State<HotDeals> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hot Deals',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: redcolor,
            ),
          ),
        ),
      ],
    );
  }
}
