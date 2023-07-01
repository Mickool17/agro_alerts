import 'package:agro_alerts/models/nighttime_viewmodel.dart';

import 'package:agro_alerts/screens/updateprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical, // Allows vertical swiping
        children: <Widget>[
          HomeScreen(),
          SecondHomeScreen(),
        ],
      ),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isHourly = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomescreendarkViewModel>.reactive(
      viewModelBuilder: () => HomescreendarkViewModel(),
      onViewModelReady: (model) {
        model.setInitialised(true);
        model.getTemperature();
        model.weeklyWeather;
      },
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        height: 239.993.h,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Iwo",
                                style: GoogleFonts.montserrat(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                "Wednesday 3rd  Dec 2023",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.notifications_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 78,
                    ),
                  ],
                ),
                // This Center positions the Container in the middle of the screen.
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Center(
                    child: Container(
                      width: 386.715,
                      height: 600.79,
                      decoration: BoxDecoration(
                        color: Colors.white, // This makes the background white
                        borderRadius: BorderRadius.circular(
                            10), // This applies the border radius
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                                0.11), // This applies the box shadow
                            spreadRadius: 0,
                            blurRadius: 37,
                            offset: Offset(0, 9), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24, horizontal: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today’s Report",
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff1F2D5A),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Center(child: Image.asset("images/image.png")),
                            SizedBox(
                              height: 26.94.h,
                            ),
                            Center(
                              child: Text(
                                "62",
                                style: GoogleFonts.montserrat(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff1F2D5A),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 68.95.h,
                            ),
                            Center(
                              child: Text(
                                "Partly Clouded",
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff1F2D5A),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100.25.h,
                            ),
                            Center(
                                child: Icon(
                              Icons.expand_less,
                              size: 40,
                            )),
                            Center(
                              child: Text(
                                "Swipe up",
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff1F2D5A),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class SecondHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    height: 239.993.h,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Iwo",
                            style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "Wednesday 3rd  Dec 2023",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notifications_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 78,
                ),
              ],
            ),
            // This Center positions the Container in the middle of the screen.
            Positioned(
              top: 120,
              right: 10,
              child: Center(
                child: Container(
                  width: 386.715,
                  height: 240.79,
                  decoration: BoxDecoration(
                    color: Colors.white, // This makes the background white
                    borderRadius: BorderRadius.circular(
                        10), // This applies the border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.11), // This applies the box shadow
                        spreadRadius: 0,
                        blurRadius: 37,
                        offset: Offset(0, 9), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundColor: const Color(0xff29CA87),
                              child: Image.asset("images/thermometer.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "62",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Temperature",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            CircleAvatar(
                              radius: 40.r,
                              backgroundColor: const Color(0xff2AA6CA),
                              child: Image.asset("images/humidity.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "62%",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Humidity",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundColor: const Color(0xff9C72C7),
                              child: Image.asset("images/rainfall.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0.0 mm",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Rainfall",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            CircleAvatar(
                              radius: 40.r,
                              backgroundColor: const Color(0xffE4BC1F),
                              child: Image.asset("images/wind.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "3.9m/s",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Windspeed",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
           bottom: -20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Suggested Crops",
                            style: GoogleFonts.montserrat(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: 180.71.w,
                        ),
                        Text("View all",
                            style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Container(
                      width: 386.715,
                      height: 118.188,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.11),
                            spreadRadius: 0,
                            blurRadius: 37,
                            offset: Offset(0, 9),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset("images/yam.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Yam (Dioscorea alata)",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    )),
                                SizedBox(
                                  height: 15.w,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.thermostat),
                                    Text("77-86  F",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                    SizedBox(
                                      width: 67.w,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.water),
                                        Text("86%",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.water_drop),
                                    Text("15000mm",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                     SizedBox(height: 14.65.h,),
                     Container(
                      width: 386.715,
                      height: 118.188,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.11),
                            spreadRadius: 0,
                            blurRadius: 37,
                            offset: Offset(0, 9),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset("images/yam.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Yam (Dioscorea alata)",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    )),
                                SizedBox(
                                  height: 15.w,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.thermostat),
                                    Text("77-86  F",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                    SizedBox(
                                      width: 67.w,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.water),
                                        Text("86%",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.water_drop),
                                    Text("15000mm",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 14.65.h,),
                     Container(
                      width: 386.715,
                      height: 118.188,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.11),
                            spreadRadius: 0,
                            blurRadius: 37,
                            offset: Offset(0, 9),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset("images/yam.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Yam (Dioscorea alata)",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    )),
                                SizedBox(
                                  height: 15.w,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.thermostat),
                                    Text("77-86  F",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                    SizedBox(
                                      width: 67.w,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.water),
                                        Text("86%",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.water_drop),
                                    Text("15000mm",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// List<Widget> _buildWeeklyWeatherCards(HomescreendarkViewModel model) {
//   return model.weeklyWeather.map((weatherDay) {
//     return Container(
//       margin: const EdgeInsets.only(right: 12),
//       height: 146.h,
//       width: 60.w,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(width: 1.0, color: const Color(0xff1F2D5A),),
//       ),
//       child: Column(
//         children: [
//           SizedBox(height: 10.h),
//           Text(weatherDay.dayOfWeek,
//               style: GoogleFonts.poppins(
//                 fontSize: 15.sp,
//                 fontWeight: FontWeight.w700, color: const Color(0xff1F2D5A),
//               )),
//           SizedBox(height: 15.h),
//           Image.network(
//             weatherDay.imageName,
//             width: 48.w,
//             height: 48.h,
//           ),
//           SizedBox(height: 19.h),
//           Text('${weatherDay.iptemperature}°C',
//               style: GoogleFonts.poppins(
//                 fontSize: 15.sp,
//                 fontWeight: FontWeight.w700, color: const Color(0xff1F2D5A),
//               )),
//         ],
//       ),
//     );
//   }).toList();
// }
