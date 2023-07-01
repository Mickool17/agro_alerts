import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/screens/signupscreens/signup2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class signupscreen1 extends StatefulWidget {
  final VoidCallback onFinish;

  const signupscreen1({Key? key, required this.onFinish}) : super(key: key);

  @override
  State<signupscreen1> createState() => _signupscreenState();
}

bool eye = true;

// ignore: camel_case_types
class _signupscreenState extends State<signupscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Expanded(
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                        height: 200,
                        child: Image.asset("images/registration logo.png")),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Create your account",
                    style: GoogleFonts.montserrat(
                        color: ktextcolor,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 107.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    height: 49.h,
                    width: 388.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text(
                          "Full Name",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    height: 49.h,
                    width: 388.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text(
                          "Email Address",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    height: 49.h,
                    width: 388.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text(
                          "Password",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        suffixIcon: GestureDetector(child: Icon(Icons.remove_red_eye_sharp)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " Must be 8 or more characters and contain\n at least 1 number and 1 special character",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff37474F),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 25.h,
                ),
                MaterialButton(
                  minWidth: 388.w,
                  height: 59.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: ktextcolor,
                  onPressed: () {
                    _handleFinish();
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 107,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.black,
                    ),
                    Text(
                      "Or register with",
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: 1,
                      width: 107,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 58.h,
                  width: 385.w,
                  child: ElevatedButton(
                    onPressed: () {
                      // Your action on button press
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust the corner radius as needed
                          side: const BorderSide(
                              color: Color(0xff37474F),
                              width: 1), // Set the border color and width
                        ),
                      ),

                      // Adjust the padding as needed
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white), // Set the background color
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Image(image: AssetImage("images/google.png")),
                        Text(
                          "Register with Google",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                        SizedBox(
                          width: 25.w,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Already a User ?",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                            color: ktextcolor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (_) => const signinscreen(),
                    //     ));
                  },
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  void _handleFinish() {
    widget.onFinish();
  }
}
