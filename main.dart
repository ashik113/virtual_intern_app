import 'package:evi_app/screens/welcome.dart';
import 'package:evi_app/screens/welcome2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Tab(
                icon: Icon(Icons.camera_alt),
                text: "Tab 2",
              )
            ],
          ),
          body: TabBarView(
            children: [WelcomeScreen1(), WelcomeScreen2()],
          ),
        ),
      ),
    );
  }
}
