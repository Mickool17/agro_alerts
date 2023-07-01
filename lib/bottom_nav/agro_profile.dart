import 'package:agro_alerts/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AgroProfile extends StatefulWidget {
  const AgroProfile({Key? key}) : super(key: key);

  @override
  _AgroProfileState createState() => _AgroProfileState();
}

class _AgroProfileState extends State<AgroProfile> {
  List<bool> checkBoxValues = List<bool>.filled(8, false);
  List<String> checkBoxNames = [
    "Grains (wheat, rice, corn, barley, oats, etc)",
    "Fruits (apples, oranges, bananas, etc)",
    "Vegetables (tomatoes, peppers, carrots, etc)",
    "Legumes (soybeans, lentils, peanuts, etc)",
    "Oilseeds (sunflower, canola, soybean, etc)",
    "Tree nuts (almonds, pecans, walnuts, etc)",
    "Livestock (cattle, poultry, sheep, pigs, etc)",
    "Other"
  ];
  List<bool> soiltypeValues = List<bool>.filled(3, false);
  List<String> soiltypeBoxNames = ["Loamy soil", "Sandy soil", "Other"];

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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (_) => HomeScreen()));
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 10.12.w,
                      ),
                      Text("Update Profile",
                          style: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 78.h,
                ),
              ],
            ),

            // This Center positions the Container in the middle of the screen.
            Positioned(
              top: 120,
              child: Center(
                child: Container(
                  width: 428.w,
                  height: 819.93.h,
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
                    padding: EdgeInsets.symmetric(),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        SizedBox(
                          height: 140,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25.w,
                          ),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Full name",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff1F2D5A),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Container(
                            height: 49.h,
                            width: 388.w,
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
                          height: 24.42.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Location",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff1F2D5A),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Container(
                            height: 49.h,
                            width: 388.w,
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
                          height: 24.42.h,
                        ),
                         Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Soil Type",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff1F2D5A),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: ExpansionTile(
                                title: Text(
                                  "",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1F2D5A),
                                  ),
                                ),
                                children: <Widget>[
                                  SizedBox(
                                    height:
                                        200, // specify the height of the container
                                    child: ListView(
                                      children: checkBoxNames
                                          .asMap()
                                          .entries
                                          .map(
                                            (entry) => CheckboxListTile(
                                              title: Text(entry.value,
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              value: checkBoxValues[entry.key],
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  checkBoxValues[entry.key] =
                                                      value ?? false;
                                                });
                                              },
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Crop Type",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff1F2D5A),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),

                     

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: ExpansionTile(
                                title: Text(
                                  "",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1F2D5A),
                                  ),
                                ),
                                children: <Widget>[
                                  SizedBox(
                                    height:
                                        100, 
                                    child: ListView(
                                      children: checkBoxNames
                                          .asMap()
                                          .entries
                                          .map(
                                            (entry) => CheckboxListTile(
                                              title: Text(entry.value,
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              value: checkBoxValues[entry.key],
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  checkBoxValues[entry.key] =
                                                      value ?? false;
                                                });
                                              },
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                       
                        SizedBox(
                          height: 62.58.h,
                        ),
                        MaterialButton(
                          minWidth: 388.w,
                          height: 59.h,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: ktextcolor,
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: GoogleFonts.montserrat(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 130,
              child: CircleAvatar(
                radius: 80.07.r,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  "images/person.png",
                ),
                // child: Center(child: Image.asset("images/morescreenyam.png",fit: BoxFit.cover,)),
              ),
            ),
            Positioned(
              top: 200,
              left: 240,
              child: CircleAvatar(
                radius: 20.07.r,
                backgroundColor: Colors.green,
                child: Icon(Icons.photo_camera),
                // child: Center(child: Image.asset("images/morescreenyam.png",fit: BoxFit.cover,)),
              ),
            ),

            // ... other widgets ...
          ],
        ),
      ),
    );
  }
}
