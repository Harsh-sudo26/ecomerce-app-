import 'package:ecommerce/images_const/image_const.dart';
import 'package:ecommerce/main_page/main_page.dart';
import 'package:ecommerce/signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final _formKey = GlobalKey<FormState>();
  void movetohome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, //form key
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(loginimg), //image here
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back !',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Playfair',
                        ),
                      ),
                      SizedBox(height: 6),
                      Column(
                        children: [
                          Text(
                            'Log In To your Account',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: const Color.fromARGB(255, 6, 6, 6),
                                letterSpacing: .5,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.shade400,
                                    offset: Offset(0.6, 0.6),
                                    blurRadius: 0,
                                  ),
                                ],
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email, color: Colors.black),
                    hint: Text('Enter Email', style: TextStyle()),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email canot be empty";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.black,
                    ),
                    hint: Text('Enter Password', style: TextStyle()),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password Cannot be empty";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Center(
                  child: InkWell(
                    onTap: () => movetohome(context),
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
