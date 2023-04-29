







import 'package:agro_alerts/config.dart';
import 'package:agro_alerts/onboarding/page1.dart';
import 'package:agro_alerts/onboarding/page2.dart';
import 'package:agro_alerts/onboarding/page3.dart';
import 'package:agro_alerts/screens/signupscreens/signup1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingmain extends StatefulWidget {
  static const String idScreen = "onboardingmain";
  const onboardingmain({super.key});

  @override
  State<onboardingmain> createState() => _onboardingmainState();
}

class _onboardingmainState extends State<onboardingmain> {
  final _controller = PageController();
  void nextPage() {
    _controller.animateToPage(_controller.page!.toInt() + 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void previousPage() {
    _controller.animateToPage(_controller.page!.toInt() - 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  bool onLastPage = false;
  bool onSecondPage = false;
  bool onFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(
            height: 70.h,
          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: GoogleFonts.urbanist(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: ktextcolor,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14.r,
                  color: const Color(0xFF393A8D),
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
            onTap: () {
              _controller.jumpToPage(2);
            },
          ),
          SizedBox(
            child: Container(
              height: 490.h,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                    onSecondPage = (index == 1);
                    onFirstPage = (index == 0);
                  });
                },
                children: const [
                  page1(),
                  page2(),
                  page3(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: SlideEffect(
              dotHeight: 6.h,
              dotWidth: 15.w,
              dotColor: const Color.fromARGB(34, 34, 59, 1),
              activeDotColor: const Color(0xFF393A8D),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          onLastPage
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: MaterialButton(
                    minWidth: 312.w,
                    height: 50.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: kprimarycolor,
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => const signupscreen1()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: MaterialButton(
                    minWidth: 312.w,
                    height: 50.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color:kprimarycolor,
                    onPressed: () {
                      nextPage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 11,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
        ]));
  }
}
