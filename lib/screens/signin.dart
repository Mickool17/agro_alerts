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
                  Row(
                  children: [
                    SizedBox(
                        height: 200,
                        child: Image.asset("images/registration logo.png")),
                  ],
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "WELCOME BACK!",
                        style: GoogleFonts.montserrat(
                            color: ktextcolor,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Let's get you logged in and back\n                 into the action.",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 16.sp,
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
                  child: Container(
                    height: 49.h,
                    width: 388.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child:  TextField(
                       style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Email Address",labelStyle: GoogleFonts.montserrat(fontSize: 16.sp,fontWeight: FontWeight.w400),
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
                    child:  TextField(
                       style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Password",labelStyle: GoogleFonts.montserrat(fontSize: 16.sp,fontWeight: FontWeight.w400),
                        suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,size: 15,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: ktextcolor,
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
                            fontSize: 13.0.sp, fontWeight: FontWeight.w400,color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                MaterialButton(
                  minWidth: 388.w,
                  height: 59.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color:ktextcolor,
                  onPressed: () {
                    _handleFinish();
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
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
                  height: 170.1.h,
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
                            style: GoogleFonts.montserrat(
                                fontSize: 15.sp, fontWeight: FontWeight.w400,color: Colors.black)),
                      ),
                      Text("Sign Up",
                            style: GoogleFonts.montserrat(
                                fontSize: 15.sp, fontWeight: FontWeight.w400,color:ktextcolor)),
                    ],
                  ),
                  
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (_) => const signinscreen(),
                    //     ));
                  },
                ),
              
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
