import 'package:ecommerce/colors.dart';
import 'package:ecommerce/productdetail/produuctdetails.dart';
import 'package:flutter/material.dart';

class TrendyDealsgrid extends StatefulWidget {
  const TrendyDealsgrid({super.key});

  @override
  State<TrendyDealsgrid> createState() => _TrendyDealsState();
}

class _TrendyDealsState extends State<TrendyDealsgrid> {
  final List trendy = [
    {
      "id": 1,
      "name": " Shoes",
      "price": 200.99,
      "image": "assets/image/men shoes.png",
      "Author": "Addidas",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
    {
      "id": 2,
      "name": "Bottle",
      "price": 129.49,
      "image": "assets/image/bottle.png",
      "Author": "Cello",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
    {
      "id": 3,
      "name": "Gaming mouse",
      "price": 300.00,
      "image": "assets/image/mouse.png",
      "Author": "RedGear",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
  ];
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
        final item2 = trendy[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Produuctdetails(product: item2),
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
                    item2['image'],
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  item2['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "\$${item2['price']}",
                  style: TextStyle(
                    color: blackcolor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
