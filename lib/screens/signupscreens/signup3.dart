import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class signupscreen3 extends StatefulWidget {
  const signupscreen3({super.key});

  @override
  State<signupscreen3> createState() => _signupscreen3State();
}

// ignore: camel_case_types
class _signupscreen3State extends State<signupscreen3> {
   List<bool> checkBoxValues = [false, false, false, false, false, false,false,false];
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24.w,
                          ),
                          SizedBox(
                            height: 46.h,
                            width: 46.w,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              
                              child: Icon(Icons.check,size: 25.sp,)
                              
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            height: 1,
                            width: 66,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 46.h,
                      width: 46.w,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        
                     
                   
                        child:Icon(Icons.check,size: 25.sp,)
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      height: 1,
                      width: 66,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 46.h,
                      width: 46.w,
                      child: CircleAvatar(
                      
                      
                        child: Text(
                          "3",
                          style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
              ),
            
Padding(
  padding: EdgeInsets.symmetric(horizontal: 25.w),
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(5.r),
    ),
    child: Container(
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(5.r),
  ),
  child: ExpansionTile(
    title:  Text(
      "Select  all that apply",
      style: GoogleFonts.poppins(fontSize: 15.0, fontWeight: FontWeight.w500,color: Color(0xff1F2D5A)),
    ),
    children: checkBoxNames
        .asMap()
        .entries
        .map(
          (entry) => CheckboxListTile(
            title: Text(entry.value),
            value: checkBoxValues[entry.key],
            onChanged: (bool? value) {
              setState(() {
                checkBoxValues[entry.key] = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
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
                    height: 45.h,
                    width: 312.w,
                    decoration: BoxDecoration(

                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: const TextField(
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
                    height: 45.h,
                    width: 312.w,
                    decoration: BoxDecoration(
                     
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
          
                SizedBox(
                  height: 50.h,
                ),
                MaterialButton(
                  minWidth: 312.w,
                  height: 50.h,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: kprimarycolor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const signinscreen()));
                  },
                  child: Text(
                    "SIGN UP",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 20.h,),
                Text(
                    "Back",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color:const Color(0xff1F2D5A),
                        fontWeight: FontWeight.w500,decoration:TextDecoration.underline),
                  ),
              
            
             
               
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
