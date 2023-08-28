import 'package:flutter/material.dart';

import '../values/constants.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String _email, _password, _cpassword;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Image.asset(
              bgImage,
              height: size.height * 0.21,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "EXPOSYS DATA LABS",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1),
            ),
            Text(
              "Virtual Internship",
              style:
                  TextStyle(fontSize: 15, color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              height: size.height * 0.05,
              width: size.width * 0.35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.green, Colors.red])),
              child: Text(
                "Sign Up!!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.1,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 13.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (value) => _email = value!,
                      validator: (email) {
                        if (email!.isEmpty) {
                          return "Please enter any email address";
                        } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(email)) {
                          return "The email address is not valid";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        focusColor: Colors.red,
                        hintText: "Email Address",
                        hintStyle:
                            TextStyle(color: Colors.red[200], fontSize: 13),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFormField(
                      onSaved: (value) {
                        _password = value!;
                      },
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "Please enter the password!";
                        } else if (password.length < 5) {
                          return "Password enter strong password";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        focusColor: Colors.red,
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Colors.red[200], fontSize: 13),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFormField(
                      onSaved: (value) {
                        _cpassword = value!;
                      },
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "Please enter the password!";
                        } else if (password.length < 5) {
                          return "Password enter strong password";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        focusColor: Colors.red,
                        hintText: "Confirm Password",
                        hintStyle:
                            TextStyle(color: Colors.red[200], fontSize: 13),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              width: size.width * 0.7,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?  ",
                  style: TextStyle(color: Colors.green),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Log In Instead",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
