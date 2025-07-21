import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Welcome Back !',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            TextField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                hint: Text('E-Mail',style: TextStyle(fontSize: 15,color: Colors.black)
                  ,)
              )
            ),
            SizedBox(height: 10,),
            TextField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hint: Text('E-Mail',style: TextStyle(fontSize: 15,color: Colors.black)
                      ,)
                )
            ),
          ],
        ),
      )
    );
  }
}
