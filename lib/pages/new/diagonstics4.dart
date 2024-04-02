import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/new/diagnostic_test5.dart';
import 'package:flutter/material.dart';

class DiagonsticsPage extends StatefulWidget {
  @override
  _DiagonsticsPageState createState() => _DiagonsticsPageState();
}

class _DiagonsticsPageState extends State<DiagonsticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.2)),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('assets/icons/icon_3.jpg'),
                            height: 140,
                            width: 140,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'You haven’t booked any tests yet',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Get started with your first health checkup',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Center(
                    child: Container(
                      width: 280,
                      height: 34,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        color: primary,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DiagnosticTestPage(),
                            ),
                          );
                        },
                        child: Text('Book Now'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Diagonstics Test',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
