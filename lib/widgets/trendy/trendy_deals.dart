import 'package:ecommerce/colors.dart';
import 'package:flutter/material.dart';

class TrendyDeals extends StatefulWidget {
  const TrendyDeals({super.key});

  @override
  State<TrendyDeals> createState() => _TrendyDealsState();
}

class _TrendyDealsState extends State<TrendyDeals> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trendy ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color:redcolor
            ),
          ),
        ),
      ],
    );
  }
}
