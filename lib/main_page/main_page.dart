import 'package:ecommerce/images_const/image_const.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List products = [
    {
      "id": 1,
      "name": "Wireless Headphones",
      "price": 59.99,
      "image":
          "https://imgs.search.brave.com/gVrEo_m2SkNb45VkuRPdQnzVh8-E0t6uj1OoqE_hTPk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9ibGFjay13aXJl/bGVzcy1oZWFkcGhv/bmVzLWJsdWUtYmFj/a2dyb3VuZF8xNzY0/MDItNjE2Ni5qcGc_/c2VtdD1haXNfaHli/cmlkJnc9NzQw",
    },
    {
      "id": 2,
      "name": "Smart Watch",
      "price": 120.00,
      "image":
          "https://imgs.search.brave.com/6_LyGKozbu2SvyceS8_CF43HrGVVoFYXaYzM6KOyNx8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/YXBsdXMtbWVkaWEt/bGlicmFyeS1zZXJ2/aWNlLW1lZGlhL2I2/ODhlY2U3LWI4Mjkt/NGE3Ni04ZWQyLWIy/MTUyZjEzZjhmMy5f/X0NSMCwwLDMwMCwz/MDBfUFQwX1NYMzAw/X1YxX19fLnBuZw",
    },
    {
      "id": 3,
      "name": "Gaming Mouse",
      "price": 35.49,
      "image":
          "https://imgs.search.brave.com/CPgewQqfHmp-tF1d6uG0859pZunQ4jXIQ_WB_chtE0g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNTgv/MTgyLzU4NS9zbWFs/bC9zbGVlay1nYW1p/bmctbW91c2UtcG9z/aXRpb25lZC1vbi1h/LXNtb290aC1zdXJm/YWNlLWlsbHVtaW5h/dGVkLWJ5LXNvZnQt/YmFja2dyb3VuZC1s/aWdodC1waG90by5q/cGc",
    },
    {
      "id": 4,
      "name": "Mechanical Keyboard",
      "price": 89.99,
      "image":
          "https://imgs.search.brave.com/UF1nevQt63fCEI8K6HFGghKDsQi9BYXKrtRaSN_2Tlk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/dGhld2lyZWN1dHRl/ci5jb20vd3AtY29u/dGVudC9tZWRpYS8y/MDI0LzA0L21lY2hh/bmljYWxrZXlib2Fy/ZHMtMjA0OHB4LTEz/ODUuanBnP2F1dG89/d2VicCZxdWFsaXR5/PTYwJndpZHRoPTU3/MA",
    },
    {
      "id": 5,
      "name": "4K Monitor",
      "price": 279.99,
      "image":
          "https://imgs.search.brave.com/cnmgGbzmu3-xu2g5vWcN28WalffB9l9jQ1GUVACAoDY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/bW9zLmNtcy5mdXR1/cmVjZG4ubmV0L1o2/N2VvRENRV0pqYUJY/clR4cnB3RUYuanBn",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Search",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Hot Deals',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
