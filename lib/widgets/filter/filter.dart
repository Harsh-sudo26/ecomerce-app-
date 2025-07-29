import 'package:ecommerce/colors.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [lightblue, darkblue]),
            border: Border.all(width: 0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Home',
              style: TextStyle(color: whitecolor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [lightblue, darkblue]),
            border: Border.all(width: 0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Clothing',
              style: TextStyle(color: whitecolor, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [lightblue, darkblue]),
            border: Border.all(width: 0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Electronics',
              style: TextStyle(color: whitecolor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
