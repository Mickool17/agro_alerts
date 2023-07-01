// import 'package:agro_alerts/config.dart';
// import 'package:agro_alerts/screens/signupscreens/signup3.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// // ignore: camel_case_types
// class signupscreen2 extends StatefulWidget {
//   final VoidCallback onFinish;

//   const signupscreen2({Key? key, required this.onFinish}) : super(key: key);

//   @override
//   State<signupscreen2> createState() => _signupscreen2State();
// }

// // ignore: camel_case_types
// class _signupscreen2State extends State<signupscreen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Expanded(
//               child: Column(children: [
//                 SizedBox(
//                   height: 90.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 24.w,
//                           ),
//                           SizedBox(
//                             height: 46.h,
//                             width: 46.w,
//                             child: CircleAvatar(
//                                 backgroundColor: Colors.green,
//                                 child: Icon(
//                                   Icons.check,
//                                   size: 25.sp,
//                                 )),
//                           ),
//                           SizedBox(height: 8.h),
//                           Container(
//                             height: 1,
//                             width: 66,
//                             margin: const EdgeInsets.symmetric(horizontal: 15),
//                             color: Colors.black,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 46.h,
//                       width: 46.w,
//                       child: CircleAvatar(
//                         child: Text(
//                           "2",
//                           style: GoogleFonts.poppins(
//                               fontSize: 24.sp,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 8.h),
//                     Container(
//                       height: 1,
//                       width: 66,
//                       margin: const EdgeInsets.symmetric(horizontal: 15),
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       height: 46.h,
//                       width: 46.w,
//                       child: CircleAvatar(
//                         backgroundColor: const Color(0xffD9D9D9),
//                         child: Text(
//                           "3",
//                           style: GoogleFonts.poppins(
//                               fontSize: 24.sp,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 24.w,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50.h,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text(
//                         "Contact",
//                         style: GoogleFonts.poppins(
//                             color: const Color(0xff1F2D5A),
//                             fontSize: 15.sp,
//                             fontWeight: FontWeight.w500),
//                       )),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Container(
//                     height: 45.h,
//                     width: 312.w,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(5.r),
//                     ),
//                     child: const TextField(
//                        style: TextStyle(color: Colors.black),
//                       keyboardType: TextInputType.name,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text(
//                         "Location",
//                         style: GoogleFonts.poppins(
//                             color: const Color(0xff1F2D5A),
//                             fontSize: 15.sp,
//                             fontWeight: FontWeight.w500),
//                       )),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Container(
//                     height: 45.h,
//                     width: 312.w,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(5.r),
//                     ),
//                     child: const TextField(
//                        style: TextStyle(color: Colors.black),
//                       keyboardType: TextInputType.name,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text(
//                         "Soil Type",
//                         style: GoogleFonts.poppins(
//                             color: const Color(0xff1F2D5A),
//                             fontSize: 15.sp,
//                             fontWeight: FontWeight.w500),
//                       )),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Container(
//                     height: 45.h,
//                     width: 312.w,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(5.r),
//                     ),
//                     child: const TextField(
//                        style: TextStyle(color: Colors.black),
//                       keyboardType: TextInputType.name,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25.h,
//                 ),
//                 MaterialButton(
//                   minWidth: 312.w,
//                   height: 50.h,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   color: kprimarycolor,
//                   onPressed: () {
//                     _handleFinish();
//                   },
//                   child: Text(
//                     "Next",
//                     style: GoogleFonts.poppins(
//                         fontSize: 15.sp,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Text(
//                   "Back",
//                   style: GoogleFonts.poppins(
//                       fontSize: 15.sp,
//                       color: const Color(0xff1F2D5A),
//                       fontWeight: FontWeight.w500,
//                       decoration: TextDecoration.underline),
//                 ),
//               ]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _handleFinish() {
//     widget.onFinish();
//   }
// }
