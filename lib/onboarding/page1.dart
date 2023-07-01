
import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  static const String idScreen = "page1";
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
     
      body: Image(image: AssetImage("images/onboardimage1.png",)),
    );
  }
}
