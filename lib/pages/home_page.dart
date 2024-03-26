// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/doctor_details_page.dart';
import 'package:doctor_hunt_app/pages/doctor_find_page.dart';
import 'package:doctor_hunt_app/pages/doctor_live_page.dart';
import 'package:doctor_hunt_app/pages/doctor_popular.dart';
import 'package:doctor_hunt_app/pages/doctor_select_time1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List liveDoctor = [
    {
      'image': 'assets/images/doc1.jpeg',
    },
    {
      'image': 'assets/images/doc2.jpeg',
    },
    {
      'image': 'assets/images/doc3.jpeg',
    },
  ];
  List popularDoctor = [
    {
      'image': 'assets/images/doctor.png',
    },
    {
      'image': 'assets/images/doctor2.png',
    },
  ];
  List Category = [
    {
      'image': 'assets/icons/cat1.png',
      'gradient': LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF2753F3),
          Color(0xFF765AFC),
        ],
        stops: [0.0649, 0.9683],
      ),
    },
    {
      'image': 'assets/icons/cat2.png',
      'gradient': LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF0EBE7E),
          Color(0xFF07D9AD),
        ],
        stops: [0.0084, 0.9565],
      ),
    },
    {
      'image': 'assets/icons/cat3.png',
      'gradient': LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFF7F44),
          Color(0xFFFFCF68),
        ],
        stops: [0.2666, 0.9306],
      ),
    },
    {
      'image': 'assets/icons/cat4.png',
      'gradient': LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFF484C),
          Color(0xFFFF6C60),
        ],
        stops: [0.0302, 1.0],
      ),
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
          Container(
            decoration: BoxDecoration(image: backgroundImage),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 156,
                      decoration: BoxDecoration(
                        gradient: linearGradient,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 19,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 45,
                                ),
                                Text(
                                  "Hi Handwerker! ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: fw400,
                                      fontFamily: "Rubik",
                                      color: Colors.white),
                                ),
                                Text(
                                  "Find Your Doctor",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Rubik",
                                      color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 71,
                            ),
                            Image.asset(
                              'assets/images/profile.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 126),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff00000014),
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: Offset(0, 0), //
                              ),
                            ],
                          ),
                          width: 335,
                          height: 54,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Search...",
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
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 19, bottom: 20),
                  child: Text(
                    "Live Doctors",
                    style: TextStyle(
                      fontSize: fs18,
                      fontWeight: fw500,
                      fontFamily: "Rubik",
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //live doctor
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Container(
                          height: 168,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: liveDoctor.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 116,
                                  height: 168,
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6)),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DoctorLivePage()),
                                          (route) => false);
                                    },
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          child: Image.asset(
                                            liveDoctor[index]['image'],
                                            fit: BoxFit.fill,
                                            height: 168,
                                            width: 116,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(11.0),
                                              child: Image.asset(
                                                'assets/icons/live.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Image.asset(
                                            'assets/icons/play.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),

                      //caterory list view
                      Padding(
                        padding: const EdgeInsets.only(left: 19, top: 30),
                        child: Container(
                          height: 90,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: Category.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 80,
                                  height: 90,
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                      gradient: Category[index]['gradient'],
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            Category[index]['image'],
                                          ),
                                        ),
                                      ),
                                      Align(
                                          alignment:
                                              FractionalOffset.centerRight,
                                          child: Image.asset(
                                              "assets/icons/eclipse2.png")),
                                      Align(
                                        alignment:
                                            FractionalOffset.bottomCenter,
                                        child: Image.asset(
                                          "assets/icons/eclipse.png",
                                          fit: BoxFit.fill,
                                          width: 80,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),

                      //popular doctor
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 19, bottom: 20, top: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DoctorPopularPage()),
                                    (route) => false);
                              },
                              child: Text(
                                "Popular Doctor",
                                style: TextStyle(
                                  fontSize: fs18,
                                  fontWeight: fw500,
                                  fontFamily: "Rubik",
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DoctorFindPage()),
                                    (route) => false);
                              },
                              child: Text(
                                "See all >",
                                style: TextStyle(
                                  fontSize: fs14,
                                  color: grayCol,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Rubik",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Container(
                          height: 275,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: popularDoctor.length,
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
                                    height: 275,
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
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          child: Image.asset(
                                            popularDoctor[index]['image'],
                                            fit: BoxFit.contain,
                                            width: 190,
                                            height: 180,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 14, bottom: 2),
                                          child: Text(
                                            "Dr. Fillerup Grab",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: fw500,
                                                fontFamily: "Rubik",
                                                color: titleCol),
                                          ),
                                        ),
                                        Text(
                                          "Medicine Specialist",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: fw400,
                                              fontFamily: "RubikLight",
                                              color: titleCol),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Image.asset('assets/icons/star.png'),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),

                      SizedBox(
                        height: 31,
                      ),

                      //feature doctor
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
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DoctorDetailPage()),
                                        (route) => false);
                                  },
                                  child: Container(
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
                                  ),
                                );
                              }),
                        ),
                      ),
                      //end feature doctor
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
