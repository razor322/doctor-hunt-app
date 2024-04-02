// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/new/diagonstics4.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class HelpCenterPage extends StatefulWidget {
  @override
  _HelpCenterPageState createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrap the entire body with a Stack to position the background image
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context)
                .size
                .height, // Ensures background covers entire screen
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Rest of your existing content goes here (wrapped in a SingleChildScrollView)
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align all elements left
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 36, left: 5, bottom: 20),
                    child: Row(
                      children: [
                        BackButtonWidget(
                            context: context, nextPage: HomeScreen()),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Help Center',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: fw400,
                                fontFamily: "Rubik"),
                          ),
                        )
                      ],
                    ),
                  ), // Search bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'i have an issue with',
                    ),
                  ),
                  // Sections with titles and descriptions
                  SizedBox(height: 24.0),
                  Text(
                    'Booking Appointments',
                  ),
                  SizedBox(height: 24.0),
                  Text('Existing Appointments'),
                  SizedBox(height: 24.0),
                  Text('Online Consultations'),
                  SizedBox(height: 24.0),
                  Text('Feedback'),
                  SizedBox(height: 24.0),
                  Text('Medicine Orders'),
                  SizedBox(height: 24.0),
                  Text('Diagnostic Tests'),
                  SizedBox(height: 24.0),
                  Text('Health Plans'),
                  SizedBox(height: 24.0),
                  Text('My Account & Practo Drive'),
                  SizedBox(height: 24.0),
                  Text('Other Issue'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
