import 'package:agro_alerts/bottom_nav/bottom_navi.dart';
import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreDetailsScreen extends StatefulWidget {
  const MoreDetailsScreen({super.key});

  @override
  State<MoreDetailsScreen> createState() => _MoreDetailsScreenState();
}

class _MoreDetailsScreenState extends State<MoreDetailsScreen> {
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
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SecondHomeScreen()));
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Spacer(),
                     Image.asset("images/share2.png"),
                     SizedBox(width: 15.w,),
                     Image.asset("images/share.png")
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
              
              child: Center(
                child: Container(
                  width: 428,
                  height: 122.247,
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
                    padding: EdgeInsets.symmetric(
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     
                      children: [
                        
                       
                          Text("Yam",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                                        Text("(Dioscorea alata)",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(0.5),
                                        )),
                                        
                                    
                                    
                       
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
             Positioned(
              top: 50,
              left:160 ,
               child: CircleAvatar(
                    radius: 60.07.r,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("images/morescreenyam.png",),
                    // child: Center(child: Image.asset("images/morescreenyam.png",fit: BoxFit.cover,)),
                  ),
             ),
Positioned(
  right: 10,

  top: 301.81.h,
  child:   Container(
  
                    width: 390,
  
                    height: 61.083,
  
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
  
                      padding: EdgeInsets.symmetric(
  
                        ),
  
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff29CA87),
                            child: Image.asset("images/thermometer.png"),
                          ),
                         
                           Text("77-86  F",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                       // SizedBox(width: 45.w,),
                                        CircleAvatar(
                            backgroundColor: const Color(0xff9C72C7),
                            child: Image.asset("images/rainfall.png"),
                          ),
                          
                          
                           Text("15000mm",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),
                                        CircleAvatar(
                            backgroundColor: const Color(0xff2AA6CA),
                            child: Image.asset("images/humidity.png"),
                          ),
                       
                           Text("86 %",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14.sp,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )),

                        ],
                      )
  
                    ),
  
                  ),
),
            Positioned(
    top: 370,
    height: 700, // You can adjust the value as you need.
    child: MyTabBar()
)

          ],
        ),
      ),
    );
  }
}
class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                MaterialButton(
                  child:  Text("General",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                  onPressed: () {
                    setState(() {
                      _selectedTabIndex = 0;
                    });
                  },
                ),
                Visibility(
                  visible: _selectedTabIndex == 0,
                  child: Container(
                    height: 2,
                    color: Colors.green,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  child: Text("Pest and Diseases",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                  onPressed: () {
                    setState(() {
                      _selectedTabIndex = 1;
                    });
                  },
                ),
                Visibility(
                  visible: _selectedTabIndex == 1,
                  child: Container(
                    height: 2,
                    color: Colors.green,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  child: Text("Growth Period",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                  onPressed: () {
                    setState(() {
                      _selectedTabIndex = 2;
                    });
                  },
                ),
                Visibility(
                  visible: _selectedTabIndex == 2,
                  child: Container(
                    height: 2,
                    color: Colors.green,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: IndexedStack(
            index: _selectedTabIndex,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                     Text("Growth Requirements",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          )),
                                          SizedBox(height: 20.h,),
                                          Text("Yams are tuberous root vegetables that require specific growth \nconditions to thrive. Here are some common growth \nrequirements for yams:",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )),
                                          SizedBox(height: 20.h,),
                                           Text("Soil Type",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          )),
                                          SizedBox(height: 20.h,),
                                          Text("Yams grow best in well-draining soil that is loose, sandy, and \nrich in organic matter. The soil should have a pH range of 5.5\n to 6.5. It is important to avoid waterlogged or compacted soil,\n as it can lead to rotting of the tubers.",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )),
                                          SizedBox(height: 20.h,),
                                           Text("Fertilization",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          )),
                                          SizedBox(height: 20.h,),
                                           Text("Yams benefit from the application of organic matter or well\nbalanced fertilizers before planting. Incorporate compost or \naged manure into the soil to improve its fertility. Additionally\nproviding a side-dressing of nitrogen-rich fertilizer during\nthe growing season can support plant growth.",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12.sp,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                   
              
                     Text("Yams benefit from the application of organic matter or well\nbalanced fertilizers before planting.Incorporate compost or \naged manure into the soil to improve its fertility. Additionally\nproviding a side-dressing of nitrogen-rich fertilizer during\nthe growing season can support plant growth.",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12.sp,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            )),
                  ],
                ),
              )
,            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                   
              
                     Text("The harvesting time can range from 6 to 9 months after\n planting, but it's essential to monitor the plants closely to\n determine the optimal harvest time. Signs of maturity include\n yellowing or drying of the leaves and a thicker, hardened skin\n on the tubers\n                      \n Keep in mind that these time frames are approximate and\n can vary based on factors such as climate, soil conditions, yam\n variety, and cultivation practices. It's always recommended to\n refer to specific instructions provided by the seed supplier or\n consult local gardening resources for more accurate\n information on the growth period of the particular yam \n variety you are cultivating.",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12.sp,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            )),
                                            
                  ],
                ),
              ),
            
              

            ],
          )
        ),
      ],
    );
  }
}
