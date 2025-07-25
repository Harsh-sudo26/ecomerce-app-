import 'package:ecommerce/productdetail/produuctdetails.dart';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List products = [
    {
      "id": 1,
      "name": " Mac Book M1 pro",
      "price": 59.99,
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
  final List weeklytop = [
    {
      "id": 1,
      "name": " T-Shirt",
      "price": 59.99,
      "image": "assets/image/tshirt.png",
      "Author": "Puma",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
    {
      "id": 2,
      "name": "I phone",
      "price": 129.49,
      "image": "assets/image/iphone.png",
      "Author": "Apple",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
    {
      "id": 3,
      "name": "Air pods",
      "price": 749.00,
      "image": "assets/image/airpod.png",
      "Author": "Apple",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
  ];
  final List trendy = [
    {
      "id": 1,
      "name": " Shoes",
      "price": 59.99,
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
      "price": 749.00,
      "image": "assets/image/mouse.png",
      "Author": "RedGear",
      "description":
          "A hobbit named Bilbo Baggins goes on an unexpected adventure with a group of dwarves to reclaim their homeland.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Deals',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                GridView.builder(
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
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Weekly Top',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
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
                    final items = weeklytop[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Produuctdetails(product: items),
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
                                items['image'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Text(
                              items['name'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),

                            SizedBox(height: 10),
                            Text(
                              "\$${items['price']}",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trendy ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
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
                            builder: (context) =>
                                Produuctdetails(product: item2),
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
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
