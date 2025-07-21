import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 100),
        child: Container(
          height: 100,
          color: Colors.amber,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 27),
              child: Text(
                'Home Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hs Cart',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                // Text(),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.email),
                ),
                labelText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.password),
                ),
                labelText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
