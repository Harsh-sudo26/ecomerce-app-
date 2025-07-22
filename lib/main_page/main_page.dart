import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List products = [
    {
      "id": 1,
      "name": " Mac Book",
      "price": 59.99,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXp09evdVOBRBmG03ax9d8fjr-sjKcRM-2Xw&s",
    },
    {
      "id": 2,
      "name": "Smart Watch",
      "price": 129.49,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTNFiOBAf4U50WlqDdPNu6RL1aMyxfP2smNA&s",
    },
    {
      "id": 3,
      "name": "DSLR Camera",
      "price": 749.00,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLzl2Jz2O3NSb_OvC_E51usZNgRFHCRq5KFA&s",
    },
  ];
  final List Weeklytop = [
    {
      "id": 1,
      "name": " T-Shirt",
      "price": 59.99,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS87DhtSTUAFmRwAibw8TYSAwiocJ3VmTmhzA&s",
    },
    {
      "id": 2,
      "name": "I phone",
      "price": 129.49,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGxWIiPJDVdrz4QX3a-5R7ZqGx23i2gIVdUg&s",
    },
    {
      "id": 3,
      "name": "Air pods",
      "price": 749.00,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmYjGpLiHD_V0CIZyoMSje9S_YTv9zQTlP1Q&s",
    },
  ];
  final List Trendy = [
    {
      "id": 1,
      "name": " Shoes",
      "price": 59.99,
      "image":
          "https://imgs.search.brave.com/pgRnWAJmBA21XAumsq2OH8A0fLy5hZDhGY0xowX541A/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAyLzA5LzgyLzI2/LzM2MF9GXzIwOTgy/MjY1M19Gem9mZjA0/Ylo4UUhuc2VGQ0h5/N3ZrTG1XbDFtSURI/Ty5qcGc",
    },
    {
      "id": 2,
      "name": "Bottle",
      "price": 129.49,
      "image":
          "https://imgs.search.brave.com/DqkqzL8szRfEkZ1IeQ2W_17hBSDpJofivIwhRQnjpCg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi93aGl0/ZS1yZXVzYWJsZS13/YXRlci1ib3R0bGUt/bW9ja3VwLTMyNjI2/MDc3Ni5qcGc",
    },
    {
      "id": 3,
      "name": "Gaming mouse",
      "price": 749.00,
      "image":
          "https://imgs.search.brave.com/PYlLbGxFmwUjjxiZiNJQ_Gg3fOA0FSI8K1lxQ3dR5ZU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNTgv/Mjk4LzMzMC9zbWFs/bC9tb2Rlcm4td2hp/dGUtZ2FtaW5nLW1v/dXNlLXdpdGgtcmdi/LWxpZ2h0aW5nLXNp/dHRpbmctb24td29v/ZGVuLWRlc2stcGhv/dG8uanBn",
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
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
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
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
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
                    final items = Weeklytop[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
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
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
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
                    final items = Trendy[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              items['image'],
                              fit: BoxFit.fitHeight,
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
