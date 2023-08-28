import 'package:flutter/material.dart';

import '../values/constants.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME"),
            Text("TO"),
            Text("Exposys Data Labs"),
            Image.asset(bgImage1),
            // Text(
            //     "Online & Offline internship we request interested candidates to fill the online application form and submit")
          ],
        ),
      ),
    );
  }
}
