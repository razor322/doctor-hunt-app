import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/new/helpcenter3.dart';
import 'package:doctor_hunt_app/pages/new/location1.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class MedicinesPage extends StatefulWidget {
  @override
  _MedicinesPageState createState() => _MedicinesPageState();
}

class _MedicinesPageState extends State<MedicinesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'Medicines orders',
        //     style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        body: Stack(children: [
      // Background image
      Container(
        //image: AssetImage('assets/gambar/bg.png'),
        //fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 10),
              child: Row(
                children: [
                  BackButtonWidget(context: context, nextPage: HomeScreen()),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Medicines orders',
                      style: TextStyle(
                          fontSize: 18, fontWeight: fw400, fontFamily: "Rubik"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
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
                        suffixIcon:
                            Icon(Icons.close, color: Color(0xff677294))),
                  ),
                ),
              ),
            ),
            // Existing content with slight adjustments

            // Guide to medicine
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 1),
                  Image(
                    image: AssetImage('assets/icons/icon_2.jpg'),
                    height: 500,
                    width: 500,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
