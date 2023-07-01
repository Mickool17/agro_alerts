import 'package:agro_alerts/bottom_nav/agro_profile.dart';
import 'package:agro_alerts/bottom_nav/agro_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/home.dart';


// ignore: camel_case_types
class agronavitem extends StatefulWidget {
  const agronavitem({super.key});

  @override
  State<agronavitem> createState() => _agronavitemState();
}

// ignore: camel_case_types
class _agronavitemState extends State<agronavitem> {
   List pages = [  MyHomePage(), const AgroSearch(), const AgroProfile()];

  int currentindex = 0;

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
       bottomNavigationBar: Container(      
            height: 68.h,                                       
  decoration: const BoxDecoration(                                                   
    borderRadius: BorderRadius.only(                                           
      topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
    boxShadow: [                                                               
      BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
    ],                                                                         
  ),                                                                           
  child: ClipRRect(                                                            
    // borderRadius: const BorderRadius.only(                                           
    // topLeft: Radius.circular(30.0),                                            
    // topRight: Radius.circular(30.0),                                           
    // ),                                                                         
    child: BottomNavigationBar(    
      type: BottomNavigationBarType.fixed,
           currentIndex: currentindex,
          onTap: onTap,
            selectedItemColor: const Color(0xff22223B),
            unselectedItemColor: const Color(0xff22223b99),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            elevation: 0,                                            
      items: const [
              BottomNavigationBarItem(
                  label: "home",
                  icon: Image(image: AssetImage("images/home.png"))),
              BottomNavigationBarItem(
                  label: "search",
                 icon: Image(image: AssetImage("images/search.png"))),
          
              BottomNavigationBarItem(
                  label: "Profile",
                  icon: Image(image: AssetImage("images/profile.png"))),
            ])               
                                                                             
    ),                                                                         
  )  
    );
  }
}