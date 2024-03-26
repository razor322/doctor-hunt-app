// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/appointment2.dart';
import 'package:doctor_hunt_app/pages/doctor_details_page.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class Appoinmentpage extends StatefulWidget {
  const Appoinmentpage({super.key});

  @override
  State<Appoinmentpage> createState() => _AppoinmentpageState();
}

class _AppoinmentpageState extends State<Appoinmentpage> {
  List data = [
    {
      'image': 'assets/images/add.png',
    },
    {
      'image': 'assets/images/patient.png',
    },
    {
      'image': 'assets/images/patient2.png',
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
                                context: context, nextPage: DoctorDetailPage()),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Appointment',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Rubik"),
                              ),
                            ),

                            //end top
                          ],
                        ),
                      ),
                      //endtop
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 34),
                          child: Container(
                            width: 340,
                            height: 123,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff00000014).withOpacity(0.05),
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
                                                            color: Colors.green,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily: 'Rubik',
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '28.00/hr',
                                                          style: TextStyle(
                                                            color:
                                                                subtitleWithOpacity,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily: 'Rubik',
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
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Appointment for",
                          style: TextStyle(
                            fontSize: fs18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
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
                              hintText: "Patient Name",
                              hintStyle: TextStyle(
                                  fontWeight: fw400,
                                  fontSize: 15,
                                  fontFamily: "Rubik",
                                  color: Color(0xff677294)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.1,
                                      color: Colors.grey.withOpacity(0.1)),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff00000014),
                                blurRadius: 0,
                                spreadRadius: 1,
                                offset: Offset(0, 0), //
                              ),
                            ],
                          ),
                          width: 335,
                          height: 54,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Contact Number",
                              hintStyle: TextStyle(
                                  fontWeight: fw400,
                                  fontSize: 15,
                                  fontFamily: "Rubik",
                                  color: Color(0xff677294)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.1,
                                      color: Colors.grey.withOpacity(0.1)),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 20),
                        child: Text(
                          "Who is this Patient?",
                          style: TextStyle(
                            fontSize: fs18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 168,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 100,
                                      width: 125,
                                      margin: EdgeInsets.only(right: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Image.asset(
                                          data[index]['image'],
                                          fit: BoxFit.fill,
                                          height: 100,
                                          width: 125,
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: Center(
                          child: Container(
                            width: 295,
                            height: 54,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              color: primary,
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AppointmentPage2()));
                              },
                              child: Text('Next'),
                            ),
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
