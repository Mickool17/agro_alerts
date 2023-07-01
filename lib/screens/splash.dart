import 'dart:async';

import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/onboarding/mainonbording.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onFinish;

  const SplashScreen({Key? key, required this.onFinish}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  navigateToNextScreen() async {
    // Set the duration of the splash screen
    Duration duration = Duration(seconds: 3);
    // Use Timer to navigate to the next screen after the given duration
    return Timer(duration, () {
      _handleFinish();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ktextcolor,
      body: Center(
        child: Image.asset(
          "images/splashlogo.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void _handleFinish() {
    widget.onFinish();
  }
}
