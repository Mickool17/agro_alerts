import 'dart:async';
import 'package:agro_alerts/screens/home.dart';
import 'package:agro_alerts/screens/homedarl.dart';
import 'package:agro_alerts/screens/signin.dart';
import 'package:agro_alerts/screens/signupscreens/signup1.dart';
import 'package:agro_alerts/screens/signupscreens/signup2.dart';
import 'package:agro_alerts/screens/signupscreens/signup3.dart';
import 'package:agro_alerts/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'onboarding/mainonbording.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          
          home: Builder(
            builder: (context) => SplashScreen(
              onFinish: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (_) => onboardingmain(
                      onFinish: () {
                        Navigator.push(
                          context,
                  MaterialPageRoute(
                    builder: (_) => signupscreen1(
                      onFinish: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => signupscreen2(
                              onFinish: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => signupscreen3(
                                      onFinish: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => signinscreen(
                                              onFinish: () async {
                                                final route =
                                                    await _getHomeScreenRoute();
                                                // ignore: use_build_context_synchronously
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) => route ==
                                                            'HomeScreen'
                                                        ? const HomeScreen()
                                                        : const HomeScreendark(),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  );
                    
              },
                    )
                    
                ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Future<String> _getHomeScreenRoute() async {
    await Future.delayed(Duration(seconds: 1));
    final now = DateTime.now();
    if (now.hour >= 18 || now.hour < 5) {
      // Check if the time is between 6 PM and 5 AM
      return 'HomeScreendark';
    } else {
      return 'HomeScreen';
    }
  }
}
