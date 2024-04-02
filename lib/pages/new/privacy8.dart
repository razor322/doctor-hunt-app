// ignore_for_file: prefer_const_constructors

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/new/setting9.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(image: backgroundImage),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // Added for better text alignment
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 5, bottom: 20),
                child: Row(
                  children: [
                    BackButtonWidget(context: context, nextPage: HomeScreen()),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: fw400,
                            fontFamily: "Rubik"),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Doctor Hunt Apps Privacy Policy', // Added the title above the text
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              // Added a divider for visual separation
              Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0EBE7F),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "The standard chunk of lorem Ipsum used since  1500s \nis reproduced below for those interested.",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),

              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0EBE7F),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sections 1.10.32 and 1.10.33 from de Finibus Bonorum \net Malorum. The point of using",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0EBE7F),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    " Lorem Ipsum is that it has a moreIt is a long \nestablished fact that reader will distracted",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0EBE7F),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    " The point of using Lorem Ipsum is that it \nhas a moreIt is a \nlong established fact that reader will distracted",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),

              SizedBox(height: 10),
              Text(
                """It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.""",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
