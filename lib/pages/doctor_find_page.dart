// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorFindPage extends StatefulWidget {
  const DoctorFindPage({super.key});

  @override
  State<DoctorFindPage> createState() => _DoctorFindPageState();
}

class _DoctorFindPageState extends State<DoctorFindPage> {
  List Doctor = [
    {
      'image': 'assets/images/docfind.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Shruti Kedia',
      'exp': '7 Years experience ',
      'percent': '87%',
      'patient': '69 Patient Stories',
      'hour': '10:00 AM tomorrow'
    },
    {
      'image': 'assets/images/docfind2.png',
      'like': 'assets/icons/like2.png',
      'name': 'Dr. Watamaniuk',
      'exp': '9 Years experience ',
      'percent': '74%',
      'patient': '78 Patient Stories',
      'hour': '12:00 AM tomorrow'
    },
    {
      'image': 'assets/images/docfind3.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Crownover',
      'exp': '5 Years experience ',
      'percent': '59%',
      'patient': '86 Patient Stories',
      'hour': '11:00 AM tomorrow'
    },
    {
      'image': 'assets/images/docfind.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Shruti Kedia',
      'exp': '7 Years experience ',
      'percent': '87%',
      'patient': '69 Patient Stories',
      'hour': '10:00 AM tomorrow'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
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
                                  'Find Doctors',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: fw400,
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
                                hintText: "Dentist",
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
                                suffixIcon: Icon(Icons.close,
                                    color: Color(0xff677294))),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: Doctor.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      width: 335,
                                      height: 190,
                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(8),

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
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Image.asset(
                                                  Doctor[index]["image"],
                                                  width: 92,
                                                  height: 87,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            Doctor[index]
                                                                ["name"],
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: fw500,
                                                              fontFamily:
                                                                  "Rubik",
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          17),
                                                              child: Image
                                                                  .asset(Doctor[
                                                                          index]
                                                                      ["like"]),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15),
                                                      child: Text(
                                                          'Tooths Dentist',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight: fw400,
                                                              fontFamily:
                                                                  "RubikLight",
                                                              color: primary)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15,
                                                              bottom: 5),
                                                      child: Text(
                                                          Doctor[index]["exp"],
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: fw400,
                                                              fontFamily:
                                                                  "RubikLight",
                                                              color:
                                                                  subtitleWithOpacity)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 10,
                                                            height: 10,
                                                            decoration: BoxDecoration(
                                                                color: primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                              Doctor[index]
                                                                  ["percent"],
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      fw400,
                                                                  fontFamily:
                                                                      "RubikLight",
                                                                  color:
                                                                      subtitleWithOpacity)),
                                                          SizedBox(
                                                            width: 17,
                                                          ),
                                                          Container(
                                                            width: 10,
                                                            height: 10,
                                                            decoration: BoxDecoration(
                                                                color: primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                              Doctor[index]
                                                                  ["patient"],
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      fw400,
                                                                  fontFamily:
                                                                      "RubikLight",
                                                                  color:
                                                                      subtitleWithOpacity)),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 17),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text('Next Hour',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight: fw400,
                                                              fontFamily:
                                                                  "Rubik",
                                                              color: primary)),
                                                      Text(
                                                          Doctor[index]["hour"],
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: fw400,
                                                              fontFamily:
                                                                  "Rubik",
                                                              color:
                                                                  subtitleWithOpacity)),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 17),
                                                  child: MaterialButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4)),
                                                    color: primary,
                                                    textColor: Colors.white,
                                                    onPressed: () {},
                                                    child: Text('Book Now'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
