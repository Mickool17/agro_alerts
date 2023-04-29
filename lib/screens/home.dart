import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/screens/homedarl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer(
          // Add the desired content for your drawer
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                SizedBox(height: 100.h,),
                  ListTile(
                    
              title: Text('Update Profile',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),),
              onTap: () {
                // Handle the action
              },
        ),
        ListTile(
        title: Text('Settings',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),),
              onTap: () {
                // Handle the action
              },
        ),
        ListTile(
 title: Text('Update Profile',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),),
              onTap: () {
                // Handle the action
              },
        ),
        ListTile(
          
              title: Text('Support',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),), onTap: () {
                // Handle the action
              },
        ),
        ListTile(
           title: Text('Log out',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),),
              onTap: () {
                // Handle the action
              },
        ),
                  
                  // Add more list items as needed
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 24.h,)
,            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                    "OSUN",
                    style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff1F2D5A),
                    ),
                  ),
                  Text(
                    "Wed 4 DEc 2023",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),
                        ],
                      ),
                  IconButton(
                    icon: Icon(Icons.menu,size: 40,),
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
              
                ],
              ),
            ),
            SizedBox(height: 71.h,),

            Text(
                    "Today ",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1F2D5A),
                    ),),

                    SizedBox(height: 33.44.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/sunny.png"),
                        SizedBox(width: 37.44.w,),
                        Text(
                    "32",
                    style: GoogleFonts.poppins(
                      fontSize: 60.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),
                      ],

                    ),
                    SizedBox(height: 24.44.h,),

                    Text(
                    "Sunny",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1F2D5A),
                    ),),
                    SizedBox(height: 70.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                             Text(
                    "11km/h",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),

                     Text(
                    "Wind",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),
                          ],
                        ),
                         Column(
                          children: [
                             Text(
                    "78 %",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),

                     Text(
                    "Humidity",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),
                          ],
                        ),
                         Column(
                          children: [
                             Text(
                    "32",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),

                     Text(
                    "Feelslike",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff1F2D5A),
                    ),),
                          ],
                        )
                      ],
                    ),

                ////
                ///
                ///
                ///
            SizedBox(height: 68.h,),
            Expanded(
          
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                       Text(
                      " THU ",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),),
                      SizedBox(height: 15.h,),
                      Image.asset("images/THU.png"),
                       SizedBox(height: 19.h,),
                            
                       Text(
                      "16",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                      " FRI ",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),),
                      SizedBox(height: 15.h,),
                      Image.asset("images/FRI.png"),
                       SizedBox(height: 19.h,),
            
                       Text(
                      "16",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                      " SAT" ,
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),),
                      SizedBox(height: 15.h,),
                    Image.asset("images/SAT.png"),
                       SizedBox(height: 19.h,),
            
                       Text(
                      "16",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                      " SUN ",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),),
                      SizedBox(height: 15.h,),
                    Image.asset("images/SUN.png"),
                       SizedBox(height: 19.h,),
            
                       Text(
                      "16",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                      "MON",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),),
                      SizedBox(height: 15.h,),
                  Image.asset("images/MON.png"),
                       SizedBox(height: 19.h,),
            
                       Text(
                      "16",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1F2D5A),
                      ),),
                  //     Column(
                  //   children: [
                  //      Text(
                  //     "TUE",
                  //     style: GoogleFonts.poppins(
                  //       fontSize: 15.sp,
                  //       fontWeight: FontWeight.w700,
                  //       color: const Color(0xff1F2D5A),
                  //     ),),
                  //     SizedBox(height: 15.h,),
                  //  Image.asset("images/TUE.png"),
                  //      SizedBox(height: 19.h,),
            
                  //      Text(
                  //     "16",
                  //     style: GoogleFonts.poppins(
                  //       fontSize: 15.sp,
                  //       fontWeight: FontWeight.w700,
                  //       color: const Color(0xff1F2D5A),
                  //     ),)
                  //   ],
                  // )
                    ],
                  )
                ],
              ),
            ),
             MaterialButton(
                  minWidth: 312.w,
                  height: 50.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: kprimarycolor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomeScreendark()));
                  },
                  child: Text(
                    "Crop Suggestions",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),

                SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
