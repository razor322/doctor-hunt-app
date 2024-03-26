// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/appointment.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorDetailPage extends StatefulWidget {
  const DoctorDetailPage({super.key});

  @override
  State<DoctorDetailPage> createState() => _DoctorDetailPageState();
}

class _DoctorDetailPageState extends State<DoctorDetailPage> {
  List data = [
    {
      'isi': 'Patient care should be the number one priority',
    },
    {
      'isi': 'If you run your practiceyou know how.',
    },
    {
      'isi': 'Thats why some of appointment reminder.',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                  'Doctor Details',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: fw400,
                                      fontFamily: "Rubik"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 109,
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: subtitleWithOpacity,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                height: 38,
                              ),

                              //bukan

                              SizedBox(
                                height: 35,
                              ),

                              //end top
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 34),
                            child: Container(
                              width: 340,
                              height: 170,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Color(0xff00000014).withOpacity(0.05),
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0), //
                                  ),
                                ],
                              ),
                              //row utama
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset(
                                            'assets/images/detaildoc.png',
                                            width: 92,
                                            height: 87,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 217,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 2,
                                            top: 16,
                                            bottom: 5,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Dr. Pediatrician',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: "Rubik"),
                                                    ),
                                                    Container(
                                                      child: Image.asset(
                                                        'assets/icons/like.png',
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                'Specialist Cardiologist',
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
                                                        'assets/icons/star.png'),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 9),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: '\$ ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  'Rubik',
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '28.00/hr',
                                                            style: TextStyle(
                                                              color:
                                                                  subtitleWithOpacity, // Warna hitam untuk teks lainnya
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  'Rubik',
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Container(
                                      width: 140,
                                      height: 32,
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        color: primary,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Appoinmentpage()));
                                        },
                                        child: Text('Book Now'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //end card
                        SizedBox(
                          height: 25,
                        ),
                        //infomation
                        Center(
                          child: Container(
                            width: 330,
                            height: 84,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Color(0xff00000014).withOpacity(0.05),
                                    blurRadius: 0,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0), //
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 8, 10),
                                  child: Container(
                                    width: 90,
                                    height: 64,
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff00000014)
                                            .withOpacity(0.05),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                        offset: Offset(0, 0), //
                                      ),
                                    ], borderRadius: BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "100",
                                          style: TextStyle(
                                              color: titleCol,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Rubik"),
                                        ),
                                        Text(
                                          "Running",
                                          style: TextStyle(
                                              color: subtitleWithOpacity,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Rubik"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 8, 10),
                                  child: Container(
                                    width: 90,
                                    height: 64,
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff00000014)
                                            .withOpacity(0.05),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                        offset: Offset(0, 0), //
                                      ),
                                    ], borderRadius: BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "500",
                                          style: TextStyle(
                                              color: titleCol,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Rubik"),
                                        ),
                                        Text(
                                          "Ongoing",
                                          style: TextStyle(
                                              color: subtitleWithOpacity,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Rubik"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 8, 10),
                                  child: Container(
                                    width: 90,
                                    height: 64,
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff00000014)
                                            .withOpacity(0.05),
                                        blurRadius: 1,
                                        spreadRadius: 2,
                                        offset: Offset(0, 0), //
                                      ),
                                    ], borderRadius: BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "700",
                                          style: TextStyle(
                                              color: titleCol,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Rubik"),
                                        ),
                                        Text(
                                          "Patient",
                                          style: TextStyle(
                                              color: subtitleWithOpacity,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Rubik"),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // end infomation
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Services",
                            style: TextStyle(
                              fontSize: fs18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Rubik",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120,
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                      int itemNumber = index + 1;
                                      return Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                " $itemNumber.",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff0EBE7F),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                data[index]['isi'],
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0,
                                                right: 20,
                                                left: 20,
                                                bottom: 8),
                                            child: Divider(
                                              color: Colors.grey[300],
                                              height: 8,
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),

                        Image.asset('assets/images/map.png'),
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
