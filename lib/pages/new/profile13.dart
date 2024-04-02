import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/home_page.dart';

import 'package:doctor_hunt_app/pages/new/setprofile12.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _ProfileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 74, 73, 96), // Remove this line

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 5, bottom: 20),
              child: Row(
                children: [
                  BackButtonWidget(context: context, nextPage: HomePage()),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 18, fontWeight: fw400, fontFamily: "Rubik"),
                    ),
                  )
                ],
              ),
            ),
            // Header
            Text(
              'What is Your Name?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),

            // Divider
            TextField(
              controller: _ProfileController,
              decoration: InputDecoration(
                labelText: 'Put Your Name',
              ),
              style: TextStyle(color: Colors.white),
            ),

            // Action button
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Simpan nama
                print('Nama: ${_ProfileController.text}');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SetProfilePage()));
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
