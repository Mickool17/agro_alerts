import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/screens/home.dart';
import 'package:agro_alerts/screens/signupscreens/signup2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class signinscreen extends StatefulWidget {
  final VoidCallback onFinish;

  const signinscreen({Key? key, required this.onFinish}) : super(key: key);

  @override
  State<signinscreen> createState() => _signinscreenState();
}

// ignore: camel_case_types
class _signinscreenState extends State<signinscreen> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Expanded(
              child: Column(children: [
                SizedBox(
                  height: 90.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.urbanist(
                            color: const Color(0xff1F2D5A),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Email",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff1F2D5A),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    height: 45.h,
                    width: 312.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: const TextField(
                       style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
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
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        
                        "Password",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff1F2D5A),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    height: 45.h,
                    width: 312.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: const TextField(
                      obscureText: true,
                       style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Checkbox(
                        value:
                            checkBoxValue, // Define this variable at the class level
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValue = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Remember me ?",
                        style: TextStyle(
                            fontSize: 16.0.sp, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                MaterialButton(
                  minWidth: 312.w,
                  height: 50.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: kprimarycolor,
                  onPressed: () {
                    _handleFinish();
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password ?",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff37474F)),
                    ),
                    SizedBox(
                      width: 24.w,
                    )
                  ],
                ),
                SizedBox(
                  height: 36.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 133,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.black,
                    ),
                    Text("OR",
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp, fontWeight: FontWeight.w400)),
                    Container(
                      height: 1,
                      width: 133,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 45.h,
                  width: 312.w,
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
                        Text("Sign in with Google",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        SizedBox(
                          width: 25.w,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
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
                        child: Text("Need an account  ?",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp, fontWeight: FontWeight.w500)),
                      ),
                      Text(
                        'SIGNUP',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
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
