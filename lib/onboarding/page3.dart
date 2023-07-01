import 'dart:ui';

import 'package:agro_alerts/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class page3 extends StatelessWidget {
  static const String idScreen = "page3";
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Image(image: AssetImage("images/onboardimage3.png")),
    );
  }
}
