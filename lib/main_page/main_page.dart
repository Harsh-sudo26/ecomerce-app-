import 'package:ecommerce/productdetail/produuctdetails.dart';
import 'package:ecommerce/widget/_textbutton.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List products = [
    {
      "id": 1,
      "name": " Mac Book",
      "price": 59.99,
      "image": "assets/macbook.png",
    },
    {
      "id": 2,
      "name": "Smart Watch",
      "price": 129.49,
      "image": "assets/smart watch.png",
    },
    {
      "id": 3,
      "name": "DSLR Camera",
      "price": 749.00,
      "image": "assets/dslr.png",
    },
  ];
  final List Weeklytop = [
    {"id": 1, "name": " T-Shirt", "price": 59.99, "image": "assets/tshirt.png"},
    {"id": 2, "name": "I phone", "price": 129.49, "image": "assets/iphone.png"},
    {
      "id": 3,
      "name": "Air pods",
      "price": 749.00,
      "image": "assets/airpod.png",
    },
  ];
  final List Trendy = [
    {
      "id": 1,
      "name": " Shoes",
      "price": 59.99,
      "image": "assets/men shoes.png",
    },
    {"id": 2, "name": "Bottle", "price": 129.49, "image": "assets/bottle.png"},
    {
      "id": 3,
      "name": "Gaming mouse",
      "price": 749.00,
      "image": "assets/mouse.png",
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
                    Txtbtn(), //custom widget here of text
                  ],
                ),

                SizedBox(height: 10),

                // GridView of Products
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
                            builder: (context) =>
                                Produuctdetails(product: item),
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
                    Txtbtn(), //custom widget here of text
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
                    final items = Weeklytop[index];
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
                            SizedBox(height: 10),
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
                    Txtbtn(), //custom widget here of text
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
                    final item2 = Trendy[index];
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
