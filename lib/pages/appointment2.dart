// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/appointment.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class AppointmentPage2 extends StatefulWidget {
  const AppointmentPage2({super.key});

  @override
  State<AppointmentPage2> createState() => _AppointmentPage2State();
}

class _AppointmentPage2State extends State<AppointmentPage2> {
  List time = [
    {
      'time': '10:00 AM',
      'time2': 'AM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '12:00 AM',
      'time2': 'AM',
      'bg': primary,
      'color': Colors.white,
    },
    {
      'time': '2:00 PM',
      'time2': 'PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '3:00 PM',
      'time2': 'PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '4:00 PM',
      'time2': 'PM',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
  ];
  List time2 = [
    {
      'time': '30',
      'time2': 'Minit',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '40',
      'time2': 'Minit',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '25',
      'time2': 'Minit',
      'bg': primary,
      'color': Colors.white,
    },
    {
      'time': '10',
      'time2': 'Minit',
      'bg': primary.withOpacity(0.08),
      'color': primary,
    },
    {
      'time': '35',
      'time2': 'Minit',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 36),
                        child: Row(
                          children: [
                            BackButtonWidget(
                                context: context, nextPage: Appoinmentpage()),
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
                      SizedBox(
                        height: 29,
                      ),
                      Container(
                          width: 339,
                          child: Image.asset('assets/images/shedule.png')),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                        child: Text(
                          "Available Time",
                          style: TextStyle(
                            fontSize: fs18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                      // Expanded(
                      //     child: ListView.builder(
                      //   itemCount: time.length,
                      //   itemBuilder: (context, index) {
                      //     return Container(
                      //       decoration: BoxDecoration(
                      //           color: time[index]["bg"],
                      //           borderRadius: BorderRadius.circular(30)),
                      //       child: Text(
                      //         time[index]['time'],
                      //         style: TextStyle(color: time[index]['color']),
                      //       ),
                      //     );
                      //   },
                      // ))

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0;
                                i < (time.length > 4 ? 4 : time.length);
                                i++)
                              Container(
                                width: 80,
                                height: 80,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: time[i]['bg'],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        time[i]['time'],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: time[i]['color'],
                                        ),
                                      ),
                                      Text(
                                        time[i]['time2'],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: time[i]['color'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (time.length > 4) SizedBox(width: 10),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                        child: Text(
                          "Reminder Me Before",
                          style: TextStyle(
                            fontSize: fs18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0;
                                i < (time2.length > 4 ? 4 : time2.length);
                                i++)
                              Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: time2[i]['bg'],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        time2[i]['time'],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: time2[i]['color'],
                                        ),
                                      ),
                                      Text(
                                        time2[i]['time2'],
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: time2[i]['color'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (time.length > 4) SizedBox(width: 10),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: Center(
                          child: Container(
                            color: Colors.white,
                            width: 295,
                            height: 54,
                            child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                              color: primary,
                              textColor: Colors.white,
                              onPressed: () {
                                // Tampilkan pop-up "Thank You" ketika tombol "Confirm" ditekan
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      content: Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/icons/jempol.png',
                                              width: 156,
                                              height: 156,
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              'Thank You!',
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Your Appointment Successful',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(height: 21),
                                            Text(
                                              'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(height: 21),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xFF0EBE7F), // Atur warna latar belakang
                                              ),
                                              child: Text('Done', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                            ),
                                            SizedBox(height: 10),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context); // Tutup dialog saat tombol "Edit your appointment" ditekan
                                              },
                                              style: TextButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                              ),
                                              child: Text(
                                                'Edit your appointment',
                                                style: TextStyle(
                                                  color: Colors.black, // Ubah warna teks sesuai kebutuhan
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text('Confirm'),
                            ),
                          ),
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
    );
  }
}
