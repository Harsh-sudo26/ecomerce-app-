import 'package:flutter/material.dart';

class Produuctdetails extends StatelessWidget {
  const Produuctdetails({super.key, required this.product});
  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Image.asset(
                      product['image'],
                      fit: BoxFit.cover,
                      height: 220,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      '\$${product['price']}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
