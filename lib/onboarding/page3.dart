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
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
           SizedBox(
              height: 20.h,
            ),
            
          SizedBox(
              height: 50.h,
            ),
             const Image(image: AssetImage("images/onboardimage3.png")),
          SizedBox(
              height: 50.h,
            ),
            
            SizedBox(height: 7,),
            Text(
              "Stay on top of the latest \n weather event with our \n    notification feature",
              style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w500,color: ktextcolor),
            )
          ],
        ),
      )),
    );
  }
}
