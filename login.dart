import 'package:flutter/material.dart';

import '../values/constants.dart';
import 'home.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
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
                style: TextStyle(
                    fontSize: 15, color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.05,
                width: size.width * 0.35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.green, Colors.red])),
                child: Text(
                  "Login!!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 13.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onSaved: (value) {
                          _email = value!;
                        },
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text("Forgot Password?",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.7,
                child: MaterialButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  color: Colors.redAccent,
                  child: Text(
                    "Login",
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
                    "Don't have an account?  ",
                    style: TextStyle(color: Colors.green),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text("Create Account",
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
      ),
    );
  }
}
