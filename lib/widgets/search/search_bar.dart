import 'package:ecommerce/checkout.dart/checkout.dart';
import 'package:flutter/material.dart';

class searchhome extends StatefulWidget {
  const searchhome({super.key});

  @override
  State<searchhome> createState() => _searchhomeState();
}

class _searchhomeState extends State<searchhome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 7),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Checkout(cartItems: [])),
            );
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
