// ignore_for_file: prefer_const_constructors

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorSelectTime2 extends StatefulWidget {
  const DoctorSelectTime2({super.key});

  @override
  State<DoctorSelectTime2> createState() => _DoctorSelectTime2State();
}

class _DoctorSelectTime2State extends State<DoctorSelectTime2> {
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

  List time = [
    {
      'time': '1:00 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '1:30 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '2:00 PM',
      'bg': primary,
      'color': Colors.white,
    },
    {
      'time': '2:30 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '3:00 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '3:30 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '4:00 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
  ];
  List time2 = [
    {
      'time': '5:00 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '5:30 PM',
      'bg': primary,
      'color': Colors.white,
    },
    {
      'time': '6:00 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '6:30 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '7:00 PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
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
                        height: 35,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Afternoon 7 slots',
                          style: TextStyle(
                              color: titleCol,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "Rubik"),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0;
                                i < (time.length > 4 ? 4 : time.length);
                                i++)
                              Container(
                                width: 76,
                                height: 40,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: time[i]['bg'],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  time[i]['time'],
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: time[i]['color'],
                                  ),
                                ),
                              ),
                            if (time.length > 4) SizedBox(width: 10),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var i = 4; i < time.length; i++)
                                Container(
                                  width: 76,
                                  height: 40,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: time[i]['bg'],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    time[i]['time'],
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: time[i]['color'],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Evening 5 slots',
                          style: TextStyle(
                              color: titleCol,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "Rubik"),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //evening slot
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0;
                                i < (time2.length > 4 ? 4 : time2.length);
                                i++)
                              Container(
                                width: 76,
                                height: 40,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: time2[i]['bg'],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  time2[i]['time'],
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: time2[i]['color'],
                                  ),
                                ),
                              ),
                            if (time.length > 4) SizedBox(width: 10),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var i = 4; i < time2.length; i++)
                                Container(
                                  width: 76,
                                  height: 40,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: time2[i]['bg'],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    time2[i]['time'],
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: time2[i]['color'],
                                    ),
                                  ),
                                ),
                            ],
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
