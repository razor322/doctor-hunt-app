// ignore_for_file: prefer_const_constructors

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  void _onIntroEnd(context) {
    Navigator.pushAndRemoveUntil(
        context,
        // MaterialPageRoute(builder: (context) => BotNavBar()), (route) => false);
        MaterialPageRoute(builder: (context) => SignUp()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        )),
        child: OnBoardingAnimation(
          pages: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: Container(
                      width: 460,
                      height: 445,
                      child: Image.asset(
                        'assets/images/slide1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 85),
                    child: Text(
                      "Find Trusted Doctors",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: titleCol,
                        fontFamily: 'Rubik',
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: Container(
                      width: 289,
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: subtitleWithOpacity,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onIntroEnd(context);
                    },
                    child: Container(
                      width: 295,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primary),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(97, 17, 97, 18),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontWeight: fw500,
                              fontSize: fs18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onIntroEnd(context);
                    },
                    child: Text(
                      "skip",
                      style: TextStyle(
                          fontSize: fs14,
                          fontFamily: "Rubik",
                          fontWeight: fw400),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Container(
                      width: 460,
                      height: 445,
                      child: Image.asset(
                        'assets/images/slide2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 85),
                    child: Text(
                      "Choose Best Doctors",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: titleCol,
                        fontFamily: 'Rubik',
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: Container(
                      width: 289,
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: subtitleWithOpacity,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onIntroEnd(context);
                    },
                    child: Container(
                      width: 295,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primary),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(97, 17, 97, 18),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontWeight: fw500,
                              fontSize: fs18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onIntroEnd(context);
                    },
                    child: Text(
                      "skip",
                      style: TextStyle(
                          fontSize: fs14,
                          fontFamily: "Rubik",
                          fontWeight: fw400),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: Container(
                      width: 460,
                      height: 445,
                      child: Image.asset(
                        'assets/images/slide3.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 85),
                    child: Text(
                      "Easy Appointments",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: titleCol,
                        fontFamily: 'Rubik',
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: Container(
                      width: 289,
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            color: subtitleWithOpacity,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onIntroEnd(context);
                    },
                    child: Container(
                      width: 295,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primary),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(97, 17, 97, 18),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontWeight: fw500,
                              fontSize: fs18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onIntroEnd(context);
                    },
                    child: Text(
                      "skip",
                      style: TextStyle(
                          fontSize: fs14,
                          fontFamily: "Rubik",
                          fontWeight: fw400),
                    ),
                  )
                ],
              ),
            ),
          ],
          indicatorDotHeight: 1.0,
          indicatorDotWidth: 1.0,
          indicatorType: IndicatorType.expandingDots,
          indicatorPosition: IndicatorPosition.bottomCenter,
        ),
      ),
    );
  }
}
