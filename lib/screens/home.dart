
import 'package:agro_alerts/models/nighttime_viewmodel.dart';

import 'package:agro_alerts/screens/updateprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isHourly = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomescreendarkViewModel>.reactive(
        viewModelBuilder: () => HomescreendarkViewModel(),
        onViewModelReady: (p1) {
          p1.setInitialised(true);
          p1.getTemperature();
          p1.weeklyWeather;
        },
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              backgroundColor:Colors.white,
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
                        SizedBox(
                          height: 33.h,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 28.sp,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 113.h,
                        ),
                        ListTile(
                          title: Text(
                            'Update Profile',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((_) => UpdateProfile())));
                          },
                        ),

                        ListTile(
                          title: Text(
                            'Log out',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500),
                          ),
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
                  SizedBox(
                    height: 24.h,
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
                              model.userLocation,
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
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 40,
                            color: const Color(0xff1F2D5A),
                          ),
                          onPressed: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 71.h,
                  ),

                  Text(
                    "Today ",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                       color: const Color(0xff1F2D5A),
                    ),
                  ),

                  SizedBox(
                    height: 33.44.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(model.weatherIcon,
                       width: 100.w,
                                    height: 100.h,
                                    scale: 0.1,),
                      SizedBox(
                        width: 37.44.w,
                      ),
                      Text(
                        model.temperature,
                        style: GoogleFonts.poppins(
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff1F2D5A),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.44.h,
                  ),

                  Text(
                    model.moment,
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1F2D5A),
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${model.windspeed}km/h',
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                               color: const Color(0xff1F2D5A),
                            ),
                          ),
                          Text(
                            "Wind",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1F2D5A),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                           '${model.humidity}%',
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                             color: const Color(0xff1F2D5A),
                            ),
                          ),
                          Text(
                            "Humidity",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1F2D5A),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            model.feelsLike,
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1F2D5A),
                            ),
                          ),
                          Text(
                            "Feelslike",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1F2D5A),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  ////
                  ///
                  ///
                  ///

                  SizedBox(height: 40.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: _buildWeeklyWeatherCards(model)),
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       Column(
                  //         children: [
                  //           Text(
                  //             "THUR",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset("images/darkc1.png"),
                  //           SizedBox(
                  //             height: 19.h,
                  //           ),

                  //           Text(
                  //             "16",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           // THU column content
                  //         ],
                  //       ),
                  //       Column(
                  //         children: [
                  //           Text(
                  //             "FRI",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset("images/darkc2.png"),
                  //           SizedBox(
                  //             height: 19.h,
                  //           ),

                  //           Text(
                  //             "16",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           // FRI column content
                  //         ],
                  //       ),
                  //       Column(
                  //         children: [
                  //           Text(
                  //             "SAT",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset("images/darkc3.png"),
                  //           SizedBox(
                  //             height: 19.h,
                  //           ),

                  //           Text(
                  //             "16",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           // SAT column content
                  //         ],
                  //       ),
                  //       Column(
                  //         children: [
                  //           Text(
                  //             "SUN",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset("images/darkc4.png"),
                  //           SizedBox(
                  //             height: 19.h,
                  //           ),

                  //           Text(
                  //             "16",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           // SUN column content
                  //         ],
                  //       ),
                  //       Column(
                  //         children: [
                  //           Text(
                  //             "MON",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset("images/darkc6.png"),
                  //           SizedBox(
                  //             height: 19.h,
                  //           ),

                  //           Text(
                  //             "16",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           // MON column content
                  //         ],
                  //       ),
                  //       Column(
                  //         children: [
                  //           Text(
                  //             "TUE",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset("images/darkc7.png"),
                  //           SizedBox(
                  //             height: 19.h,
                  //           ),

                  //           Text(
                  //             "16",
                  //             style: GoogleFonts.poppins(
                  //               fontSize: 15.sp,
                  //               fontWeight: FontWeight.w700,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           // TUE column content
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        });
  }
}

List<Widget> _buildWeeklyWeatherCards(HomescreendarkViewModel model) {
  return model.weeklyWeather.map((weatherDay) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 146.h,
      width: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1.0, color: const Color(0xff1F2D5A),),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Text(weatherDay.dayOfWeek,
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700, color: const Color(0xff1F2D5A),
              )),
          SizedBox(height: 15.h),
          Image.network(
            weatherDay.imageName,
            width: 48.w,
            height: 48.h,
          ),
          SizedBox(height: 19.h),
          Text('${weatherDay.iptemperature}°C',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700, color: const Color(0xff1F2D5A),
              )),
        ],
      ),
    );
  }).toList();
}
