// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/doctor_select_time1.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorPopularPage extends StatefulWidget {
  const DoctorPopularPage({super.key});

  @override
  State<DoctorPopularPage> createState() => _DoctorPopularPageState();
}

class _DoctorPopularPageState extends State<DoctorPopularPage> {
  List doctor = [
    {
      'image': 'assets/images/popdoc.png',
      'name': 'Dr. Truluck Nik',
      'special': 'Medicine Specialist',
    },
    {
      'image': 'assets/images/popdoc2.png',
      'name': 'Dr. Tranquilli',
      'special': 'Patheology Specialistt',
    },
    {
      'image': 'assets/images/popdoc.png',
      'name': 'Dr. Truluck Nik',
      'special': 'Medicine Specialist',
    },
  ];

  List category = [
    {
      'image': 'assets/images/catdoc.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Pediatrician',
      'special': 'Specialist Cardiologist',
      'rate': '2.8',
      'views': '(2475 views)',
    },
    {
      'image': 'assets/images/catdoc2.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like2.png',
      'name': 'Dr. Mistry Brick',
      'special': 'Specialist Dentist',
      'rate': '2.8',
      'views': '(2893 views)',
    },
    {
      'image': 'assets/images/catdoc3.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Ether Wall',
      'special': 'Specialist Cancer',
      'rate': '2.7',
      'views': '(2754 views)',
    },
    {
      'image': 'assets/images/catdoc.png',
      'star': 'assets/icons/star.png',
      'like': 'assets/icons/like2.png',
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
                      //top
                      Padding(
                        padding: const EdgeInsets.only(top: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BackButtonWidget(
                                context: context, nextPage: BotNavBar()),
                            Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.search,
                                  color: subtitleWithOpacity,
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      //end top
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Popular Doctor',
                        style: TextStyle(
                            color: titleCol,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Rubik"),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //popular
                            Container(
                              height: 280,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: doctor.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DoctorSelectTime1()),
                                            (route) => false);
                                      },
                                      child: Container(
                                        width: 190,
                                        height: 280,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.08), // Warna bayangan (hitam) dengan opasitas 8%
                                                blurRadius: 2, // Radius blur
                                                spreadRadius:
                                                    2, // Seberapa jauh bayangan akan tersebar
                                                offset: Offset(0,
                                                    2), // Posisi bayangan (x, y)
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              child: Image.asset(
                                                doctor[index]['image'],
                                                fit: BoxFit.contain,
                                                width: 190,
                                                height: 180,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 14, bottom: 2),
                                              child: Text(
                                                doctor[index]['name'],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: fw500,
                                                    fontFamily: "Rubik",
                                                    color: titleCol),
                                              ),
                                            ),
                                            Text(
                                              doctor[index]['special'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: fw400,
                                                  fontFamily: "RubikLight",
                                                  color: titleCol),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Image.asset(
                                                'assets/icons/star.png'),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            //end popular

                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Category',
                              style: TextStyle(
                                  color: titleCol,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: "Rubik"),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: category.length,
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
                                          category[index]['image'],
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
                                                    category[index]['name'],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Rubik"),
                                                  ),
                                                  Container(
                                                    child: Image.asset(
                                                      category[index]['like'],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                category[index]['special'],
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
                                                        category[index]
                                                            ['star']),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: category[index]
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
                                                            category[index]
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
            ],
          )
        ],
      ),
    );
  }
}
