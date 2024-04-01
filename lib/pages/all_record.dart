import 'package:doctor_hunt_app/pages/medicine_order.dart';
import 'package:flutter/material.dart';

class AllRecord extends StatefulWidget {
  const AllRecord({Key? key}) : super(key: key);

  @override
  State<AllRecord> createState() => _AllRecordState();
}

class _AllRecordState extends State<AllRecord> {
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
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text(
                      'All Record',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 40), // Spacer
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 100, // Adjust the position as needed
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Card
                _buildRecordCard("27 FEB", "Abdullah Mamun"),
                SizedBox(height: 20),
                // Second Card
                _buildRecordCard("28 FEB", "Abdullah Shuvo"),
                SizedBox(height: 20),
                // Third Card
                _buildRecordCard("29 FEB", "Shruti Kedia"),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: SizedBox(
              width: 270,
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MedicineOrder()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0EBE7F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Text('Add a Record', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecordCard(String date, String recordFor) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF0EBE7F),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          date,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Record added by you",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Record for $recordFor",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0EBE7F),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "1 Prescription",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 5), // Spacer
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xFF0EBE7F).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "New",
                        style: TextStyle(
                          color: Color(0xFF0EBE7F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              onPressed: () {
                // Action for three dots
              },
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}