import 'dart:async';

import 'package:doctor_hunt_app/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplassScreen(),
    );
  }
}

class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  void dataScreen() async {
    Timer(Duration(seconds: 2), () {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OnboardingPage()),
          (route) => false);
    });
  }

  @override
  void initState() {
    dataScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Image.asset('assets/icons/logo.png'),
          ),
        ));
  }
}
