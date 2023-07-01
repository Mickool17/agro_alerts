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
  final VoidCallback onFinish;

  const onboardingmain({Key? key, required this.onFinish}) : super(key: key);
  static const String idScreen = "onboardingmain";

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
            height: 195.41.h,
          ),
          SizedBox(
            height: 255.41.h,
            width: 255.41.w,
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
          SizedBox(
            height: 50.51.h,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: SlideEffect(
              dotHeight: 5.47.h,
              dotWidth: 84.82.w,
              dotColor: const Color.fromARGB(34, 34, 59, 1),
              activeDotColor: ktextcolor,
            ),
          ),
          onFirstPage?
          SizedBox(
             height: 50.51.h,
          ):onSecondPage?
           SizedBox(
             height: 30.73.h,
          ):onLastPage?
           SizedBox(
             height: 20.73.h,
          ):SizedBox(),

          onFirstPage
              ? Column(
                  children: [
                    pagewordshead[0],
                    SizedBox(
                      height: 18.22.h,
                    ),
                    pagewordsheadsub[0]
                  ],
                )
              : onSecondPage
                  ? Column(
                      children: [
                        pagewordshead[1],
                        SizedBox(
                          height: 18.22.h,
                        ),
                        pagewordsheadsub[1]
                      ],
                    )
                  : onLastPage
                      ? Column(
                          children: [
                            pagewordshead[2],
                            SizedBox(
                              height: 18.22.h,
                            ),
                            pagewordsheadsub[2]
                          ],
                        )
                      : Text(
                          "null",
                          style: TextStyle(color: Colors.red),
                        ),
          SizedBox(
            height: 126.43.h,
          ),
          onLastPage
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaterialButton(
                    minWidth: 388.w,
                    height: 50.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: ktextcolor,
                    onPressed: () {
                      _handleFinish();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: GoogleFonts.montserrat(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: Opacity(
                          opacity: 0.8,
                          child: Text(" Skip ",
                              style: GoogleFonts.montserrat(
                                  color: const Color(0xff000000),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,fontStyle: FontStyle.normal)),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 10000),
                              curve: Curves.linear);
                        },
                        child: Text(" Next ",
                            style: GoogleFonts.montserrat(
                                color: ktextcolor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,fontStyle: FontStyle.normal)),
                      ),
                    ],
                  )),
        SizedBox(height: 131.04.h,)]));
  }

  void _handleFinish() {
    widget.onFinish();
  }
}

final List<Text> pagewordshead = [
  Text("Be aware of the weather",
      style: GoogleFonts.montserrat(
          color: ktextcolor, fontSize: 24.sp, fontWeight: FontWeight.w600)),
  Text("Personalized Suggestions",
      style: GoogleFonts.montserrat(
          color: ktextcolor, fontSize: 24.sp, fontWeight: FontWeight.w600)),
  Text("Be the first to know",
      style: GoogleFonts.montserrat(
          color: ktextcolor, fontSize: 24.sp, fontWeight: FontWeight.w600)),
];

final List<Text> pagewordsheadsub = [
  Text("Never be caught off guard by the\n                  weather again.",
      style: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500)),
  Text(
      "Get personalized suggestions for\ncrops that are best suited for your\n                          farm.",
      style: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500)),
  Text(
      "Stay on top of the latest weather\nevent with our notification feature.",
      style: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500)),
];
