// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/doctor_select_time2.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorSelectTime1 extends StatefulWidget {
  const DoctorSelectTime1({super.key});

  @override
  State<DoctorSelectTime1> createState() => _DoctorSelectTime1State();
}

class _DoctorSelectTime1State extends State<DoctorSelectTime1> {
  List doctor = [
    {
      'time': 'Today, 23 Feb',
      'slot': 'No slots available',
      'color': Colors.black,
      'subcolor': subtitleWithOpacity,
      'bg': Colors.transparent,
    },
    {
      'time': 'Tommorow, 24 Feb',
      'slot': '9 slots available',
      'color': Colors.white,
      'subcolor': Colors.white,
      'bg': primary,
    },
    {
      'time': 'Thursday, 25 Feb',
      'slot': '10 slots available',
      'color': subtitleWithOpacity,
      'subcolor': subtitleWithOpacity,
      'bg': Colors.transparent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(image: backgroundImage),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 36),
                        child: Row(
                          children: [
                            BackButtonWidget(
                                context: context, nextPage: BotNavBar()),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Select Time',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: fw500,
                                    fontFamily: "Rubik"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff00000014).withOpacity(0.05),
                              blurRadius: 1,
                              spreadRadius: 2,
                              offset: Offset(0, 0), //
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Image.asset('assets/images/doctime.png'),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dr. Shruti Kedia',
                                style: TextStyle(
                                    fontWeight: fw500,
                                    fontSize: 16,
                                    fontFamily: "Rubik"),
                              ),
                              Image.asset('assets/icons/like.png')
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Upasana Dental Clinic, salt lake',
                                style: TextStyle(
                                    color: subtitleWithOpacity,
                                    fontWeight: fw500,
                                    fontSize: 12,
                                    fontFamily: "Rubik"),
                              ),
                              Image.asset('assets/icons/star.png')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      //timeline
                      Container(
                        height: 75,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: doctor.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  height: 75,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.1),
                                    color: doctor[index]['bg'],
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          doctor[index]['time'],
                                          style: TextStyle(
                                              color: doctor[index]['color'],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19,
                                              fontFamily: "Rubik"),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          doctor[index]['slot'],
                                          style: TextStyle(
                                              color: doctor[index]['subcolor'],
                                              fontWeight: fw400,
                                              fontSize: 14,
                                              fontFamily: "RubikLight"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      //end of timeline
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Today, 23 Feb',
                        style: TextStyle(
                            color: titleCol,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            fontFamily: "Rubik"),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'No slots available',
                        style: TextStyle(
                            color: subtitleCol,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: "RubikLight"),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 306,
                        height: 54,
                        child: MaterialButton(
                          onPressed: () {},
                          color: primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            'Next availability on wed, 24 Feb',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                fontFamily: "Rubik"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorSelectTime2()),
                              (route) => false);
                        },
                        child: Text(
                          'OR',
                          style: TextStyle(
                              color: subtitleCol,
                              fontSize: 14,
                              fontWeight: fw400,
                              fontFamily: "Rubik"),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 54,
                        width: 306,
                        child: MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            'Contact Clinic',
                            style: TextStyle(
                                color: primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                fontFamily: "Rubik"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
