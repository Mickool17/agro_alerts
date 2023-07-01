import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class signupscreen3 extends StatefulWidget {
  final VoidCallback onFinish;

  const signupscreen3({Key? key, required this.onFinish}) : super(key: key);

  @override
  State<signupscreen3> createState() => _signupscreen3State();
}

// ignore: camel_case_types
class _signupscreen3State extends State<signupscreen3> {
  List<bool> checkBoxValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
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
  List<bool> soiltypeValues = [
    false,
    false,
    false
  ];
  List<String> soiltypeBoxNames = [
    "Loamy soil",
    "Sandy soil",
    "Other"
  ];
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
                    "Register with us",
                    style: GoogleFonts.montserrat(
                        color: ktextcolor,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10.h,),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Lets get you started on your \n                  journey",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 110.h,),
                
                  
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
                          "Soil Types",
                          style: GoogleFonts.poppins(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1F2D5A)),
                        ),
                        children: checkBoxNames
                            .asMap()
                            .entries
                            .map(
                              (entry) => CheckboxListTile(
                              
                                title: Text(entry.value,style: TextStyle(color: Colors.black),),
                                value: checkBoxValues[entry.key],
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkBoxValues[entry.key] = value ?? false;
                                  });
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            )
                            .toList(),
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
                          "Crop type",
                          style: GoogleFonts.poppins(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1F2D5A)),
                        ),
                        children: soiltypeBoxNames
                            .asMap()
                            .entries
                            .map(
                              (entry) => CheckboxListTile(
                              
                                title: Text(entry.value,style: TextStyle(color: Colors.black),),
                                value: checkBoxValues[entry.key],
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkBoxValues[entry.key] = value ?? false;
                                  });
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
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
                    "Register",
                    style: GoogleFonts.montserrat(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),
                  ),
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
