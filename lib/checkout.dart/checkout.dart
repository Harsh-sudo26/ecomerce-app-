import 'package:ecommerce/colors.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key, required this.cartItems});
  final List<Map<String, dynamic>> cartItems;

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final cartlist = widget.cartItems[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      cartlist['image'],
                      height: 70,
                      width: 70,
                    ),
                    title: Text(
                      cartlist['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(cartlist['Author']),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_forever_sharp, color: Colors.red),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(children: [Text('')]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: redcolor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Proceed Payment',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: whitecolor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromARGB(
                          255,
                          219,
                          221,
                          223,
                        ),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
