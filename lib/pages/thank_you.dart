import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:flutter/material.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), 
                fit: BoxFit.cover
              )
            ),
          ),
          Center(
            child: Container(
              width: 335,
              height: 520,
              margin: EdgeInsets.only(top: 40), // Mengubah nilai margin top
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  ),SizedBox(height: 5),
                  Text(
                    'Your Appointment Successful',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 21),
                  Text(
                    'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM', textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),SizedBox(height: 21),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0EBE7F), // Atur warna latar belakang
                    ),
                    child: Text('Done'),
                  ),SizedBox(height: 10,),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'Edit your appointment',
                      style: TextStyle(
                        color: Colors.black, // Ubah warna teks sesuai kebutuhan
                        fontSize: 14, 
                        fontWeight: FontWeight.w100
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}