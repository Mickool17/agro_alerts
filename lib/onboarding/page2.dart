import 'dart:ui';

import 'package:agro_alerts/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class page2 extends StatelessWidget {
  static const String idScreen = "page2";
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
           
          
            const Image(image: AssetImage("images/onboardimage2.png")),
            
           SizedBox(height: 70.h,),
         
           
            Text(
              "  Get personalized suggestions \nfor crops that are best suited for\n                    your farm",
              style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w500,color: ktextcolor),
            )
          ],
        ),
      )),
    );
  }
}
