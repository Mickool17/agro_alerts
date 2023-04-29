import 'dart:ui';

import 'package:agro_alerts/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class page1 extends StatelessWidget {
  static const String idScreen = "page1";
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const Image(image: AssetImage("images/onboardimage1.png")),
            SizedBox(
              height: 53.h,
            ),
            
            SizedBox(height: 4.h,),
            Text(
              "Never be caught off guard by \n           the weather again",
              style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w500,color: ktextcolor),
            ),
            
          ],
          
        ),
      )
      ),
    );
  }
}
