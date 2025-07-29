import 'package:ecommerce/colors.dart';
import 'package:flutter/material.dart';

class WeeklyDeals extends StatefulWidget {
  const WeeklyDeals({super.key});

  @override
  State<WeeklyDeals> createState() => _WeeklyDealsState();
}

class _WeeklyDealsState extends State<WeeklyDeals> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Weekly Top',
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
