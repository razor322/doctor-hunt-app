// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({super.key});

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  List doctor = [
    {
      'image': 'assets/images/favdoc.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Shouey',
      'special': 'Specalist Cardiology',
    },
    {
      'image': 'assets/images/favdoc1.png',
      'like': 'assets/icons/like2.png',
      'name': 'Dr. Christenfeld N',
      'special': 'Specalist Cancer',
    },
    {
      'image': 'assets/images/favdoc2.png',
      'like': 'assets/icons/like2.png',
      'name': 'Dr. Shouey',
      'special': 'Specalist Medicine',
    },
    {
      'image': 'assets/images/favdoc3.png',
      'like': 'assets/icons/like.png',
      'name': 'Dr. Shouey',
      'special': 'Specalist Dentist',
    },
  ];

  List featureDoctor = [
    {
      'image': 'assets/images/rdoctor.png',
      'love': 'assets/icons/love.png',
      'data': '3.7',
      'name': 'Dr. Crick',
      'salary': '25.00/ hours'
    },
    {
      'image': 'assets/images/rdoctor2.png',
      'love': 'assets/icons/love2.png',
      'data': '3.0',
      'name': 'Dr. Strain',
      'salary': '22.00/ hours'
    },
    {
      'image': 'assets/images/rdoctor3.png',
      'love': 'assets/icons/love.png',
      'data': '2.9',
      'name': 'Dr. Lachinet',
      'salary': '29.00/ hours'
    },
    {
      'image': 'assets/images/rdoctor.png',
      'love': 'assets/icons/love.png',
      'data': '3.7',
      'name': 'Dr. Crick',
      'salary': '25.00/ hours'
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
                                'Favourite Doctors',
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
                              suffixIcon:
                                  Icon(Icons.close, color: Color(0xff677294))),
                        ),
                      ),
                      //end top

                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 375,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15,
                                    mainAxisExtent: 180),
                            itemCount: doctor.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.08), // Warna bayangan (hitam) dengan opasitas 8%
                                      blurRadius: 2, // Radius blur
                                      spreadRadius:
                                          2, // Seberapa jauh bayangan akan tersebar
                                      offset: Offset(
                                          0, 2), // Posisi bayangan (x, y)
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(
                                              doctor[index]['like']),
                                        )),
                                    Image.asset(doctor[index]['image']),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Text(
                                      doctor[index]['name'],
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      doctor[index]['special'],
                                      style: TextStyle(
                                          color: primary,
                                          fontFamily: "Rubik",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 19, bottom: 20, top: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Feature Doctor",
                              style: TextStyle(
                                fontSize: fs18,
                                fontWeight: fw500,
                                fontFamily: "Rubik",
                              ),
                            ),
                            Text(
                              "See all >",
                              style: TextStyle(
                                fontSize: fs14,
                                color: grayCol,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Rubik",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Container(
                          height: 140,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: featureDoctor.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 96,
                                  height: 140,
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                              0x14000000), // Warna bayangan (hitam) dengan opasitas 8%
                                          blurRadius: 40, // Radius blur
                                          spreadRadius:
                                              0, // Seberapa jauh bayangan akan tersebar
                                          offset: Offset(
                                              0, 0), // Posisi bayangan (x, y)
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 8,
                                            bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              featureDoctor[index]['love'],
                                              width: 15,
                                              height: 15,
                                              // fit: BoxFit.contain,
                                              // width: 54,
                                              // height: 54,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/star1.png',
                                                  ),
                                                  Text(
                                                    featureDoctor[index]
                                                        ["data"],
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: fw500,
                                                        fontFamily: "Rubik"),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          child: Image.asset(
                                            featureDoctor[index]['image'],
                                            fit: BoxFit.contain,
                                            width: 54,
                                            height: 54,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        featureDoctor[index]['name'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: fw500,
                                            fontFamily: "Rubik"),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '\$ ',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 9,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Rubik',
                                              ),
                                            ),
                                            TextSpan(
                                              text: featureDoctor[index]
                                                  ['salary'],
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Warna hitam untuk teks lainnya
                                                fontSize: 9,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: 'Rubik',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                );
                              }),
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
