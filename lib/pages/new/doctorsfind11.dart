// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorFindPage2 extends StatefulWidget {
  const DoctorFindPage2({super.key});

  @override
  State<DoctorFindPage2> createState() => _DoctorFindPage2State();
}

class _DoctorFindPage2State extends State<DoctorFindPage2> {
  List Doctor = [
    {
      'image': 'assets/images/doc1.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Pediatrician',
      'special': 'Specialist Cardiologist',
      'rate': '2.8',
      'views': '(2475 views)',
    },
    {
      'image': 'assets/images/doc2.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Mistry Brick',
      'special': 'Specialist Dentist',
      'rate': '2.8',
      'views': '(2893 views)',
    },
    {
      'image': 'assets/images/doc3.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Ether Wall',
      'special': 'Specialist Cancer',
      'rate': '2.7',
      'views': '(2754 views)',
    },
    {
      'image': 'assets/images/doc4.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Pediatrician',
      'special': 'Specialist Cardiologist',
      'rate': '2.8',
      'views': '(2475 views)',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Center(
              child: Container(
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
                                'Doctors',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Rubik"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff00000014),
                              blurRadius: 20,
                              spreadRadius: 10,
                              offset: Offset(0, 0), //
                            ),
                          ],
                        ),
                        width: 335,
                        height: 54,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  fontWeight: fw400,
                                  fontSize: 15,
                                  fontFamily: "Rubik",
                                  color: Color(0xff677294)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(6)),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff677294),
                              ),
                              suffixIcon:
                                  Icon(Icons.close, color: Color(0xff677294))),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: Doctor.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Container(
                                  width: 335,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff00000014)
                                            .withOpacity(0.05),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                        offset: Offset(0, 0), //
                                      ),
                                    ],
                                  ),
                                  //row utama
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(
                                          Doctor[index]['image'],
                                          width: 82,
                                          height: 82,
                                        ),
                                      ),
                                      Container(
                                        width: 217,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 16,
                                            bottom: 5,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    Doctor[index]['name'],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Rubik"),
                                                  ),
                                                  Container(
                                                    child: Image.asset(
                                                      Doctor[index]['like'],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                Doctor[index]['special'],
                                                style: TextStyle(
                                                    color: subtitleWithOpacity,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: "RubikLight"),
                                              ),
                                              SizedBox(
                                                height: 13,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Image.asset(
                                                        Doctor[index]['star']),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: Doctor[index]
                                                              ['rate'],
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        WidgetSpan(
                                                            child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 5,
                                                          ),
                                                          child: Text(
                                                            Doctor[index]
                                                                ['views'],
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  subtitleWithOpacity,
                                                            ),
                                                          ),
                                                        )),
                                                        // TextSpan(
                                                        //   text: category[index]
                                                        //       ['views'],
                                                        //   style: TextStyle(
                                                        //     fontSize: 14,
                                                        //     color:
                                                        //         subtitleWithOpacity,
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
