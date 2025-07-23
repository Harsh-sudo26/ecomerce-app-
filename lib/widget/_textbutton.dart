import 'package:flutter/material.dart';

class Txtbtn extends StatelessWidget {
  const Txtbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'View All',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}
