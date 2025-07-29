import 'package:ecommerce/colors.dart';
import 'package:ecommerce/productdetail/produuctdetails.dart';
import 'package:flutter/material.dart';

class Hotdealsgrid extends StatefulWidget {
  const Hotdealsgrid({super.key});

  @override
  State<Hotdealsgrid> createState() => _HotdealsgridState();
}

class _HotdealsgridState extends State<Hotdealsgrid> {
  final List products = [
    {
      "id": 1,
      "name": " Mac Book M1 pro",
      "price": 2000.99,
      "image": "assets/image/macbook.png",
      "Author": "Apple",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
    {
      "id": 2,
      "name": "Smart Watch",
      "price": 129.49,
      "image": "assets/image/smart watch.png",
      "Author": "Realme",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
    {
      "id": 3,
      "name": "DSLR Camera",
      "price": 749.00,
      "image": "assets/image/dslr.png",
      "Author": "Nikkon",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        final item = products[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Produuctdetails(
                  product: item,
                ), //product parameter passed the value of items
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    item['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  item['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "\$${item['price']}",
                  style: TextStyle(color: blackcolor),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
