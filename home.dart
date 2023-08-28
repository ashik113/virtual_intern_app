import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            Text("INTERNSHIP \n PROGRAMME"),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                label: Text("Name"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                label: Text("Branch"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                label: Text("Email"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                label: Text("College"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                label: Text("Phone"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
