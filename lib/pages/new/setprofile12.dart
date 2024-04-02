import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/home_page.dart';
import 'package:doctor_hunt_app/pages/new/profile13.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class SetProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
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
            // Judul dan Deskripsi
            Center(
              child: Column(
                children: [
                  Text(
                    'Set up your profile',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Update your profile to connect your doctor with better impression.',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Foto Profil
            SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/icons/icon_9.png'),
              ),
            ),

            // Divider
            Divider(height: 20),

            // Informasi Pribadi
            Text(
              'Personal Information',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),

            // Nama
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),

            // Nomor Telepon
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),

            // Tanggal Lahir
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                labelText: 'Date of Birth (DD/MM/YYYY)',
                border: OutlineInputBorder(),
              ),
            ),

            // Lokasi
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),

            // Tombol Simpan
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Center(
                child: Container(
                  width: 250,
                  height: 40,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: primary,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Text('Continue'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
