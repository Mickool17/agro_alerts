import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../screens/home.dart';
import 'package:agro_alerts/bottom_nav/agro_profile.dart';
import 'package:agro_alerts/bottom_nav/agro_search.dart';
import 'package:agro_alerts/screens/moredetailsscreen.dart';

class agronavitem extends StatefulWidget {
  const agronavitem({super.key});

  @override
  State<agronavitem> createState() => _agronavitemState();
}

class _agronavitemState extends State<agronavitem> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      MyHomePage(),
      const AgroSearch(),
      const AgroProfile(),
    ];
  }

 List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Image.asset("images/home.png"),
      title: ("Home"),
      activeColorPrimary: const Color(0xff22223B),
      inactiveColorPrimary: const Color(0xff22223b99),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset("images/search.png"),
      title: ("Search"),
      activeColorPrimary: const Color(0xff22223B),
      inactiveColorPrimary: const Color(0xff22223b99),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset("images/profile.png"),
      title: ("Profile"),
      activeColorPrimary: const Color(0xff22223B),
      inactiveColorPrimary: const Color(0xff22223b99),
    ),
  ];
}








  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // you can change this to match your design
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
       
          colorBehindNavBar: Colors.transparent,
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ]),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.once,
      navBarHeight: 68,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
     navBarStyle: NavBarStyle.style12, // choose the navBar style here
    );
  }
}
