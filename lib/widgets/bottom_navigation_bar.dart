import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/doctors_page.dart';
import 'package:doctor_hunt_app/pages/home_page.dart';
import 'package:doctor_hunt_app/pages/new/diagonstics4.dart';
import 'package:doctor_hunt_app/pages/new/doctorsfind11.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    _pages = [
      PageOne(),
      PageTwo(),
      PageThree(),
      PageFour(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        top: false,
        child: Scaffold(
            // extendBody: true,
            appBar: null,
            body: _pages[_currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              animationCurve: Curves.easeInOutCubic,
              backgroundColor: Colors.transparent,
              color: primary,
              height: 70,
              index: _currentIndex,
              onTap: (index) => setState(() {
                this._currentIndex = index;
              }),
              items: [
                Icon(Icons.home, color: Colors.white),
                Icon(Icons.favorite, color: Colors.white),
                Icon(Icons.book, color: Colors.white),
                Icon(Icons.chat, color: Colors.white),
                // Image.asset("assets/icons/book.png",
                //     scale: 18, color: Colors.white),
                // Image.asset(
                //   "assets/icons/chat.png",
                //   scale: 20,
                //   color: Colors.white,
                // ),
              ],
            )),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DoctorsPage();
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DiagonsticsPage();
  }
}

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DoctorFindPage2();
  }
}
