import 'package:doctor_hunt_app/pages/all_record.dart';
import 'package:flutter/material.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({Key? key}) : super(key: key);

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
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
                        'Add Record',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 40), // Spacer
                    ],
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/images/duapria.png',
                    width: 216,
                    height: 125,
                  ),
                ],
              ),
            ),
          Positioned(
            top: 359,
            left: 20,
            child: Container(
              width: 380,
              height: 453,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Record for',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Abdullah Mamun',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0EBE7F),
                                ),
                              ),
                              SizedBox(width: 166),
                              Icon(Icons.edit),
                            ],
                          ),
                        ],
                      ),

                    SizedBox(height: 10),
                    Text(
                      'Type of record',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        _buildRecordTypeIcon(Icons.report, 'Report'),
                        SizedBox(width: 10),
                        _buildRecordTypeIcon(Icons.local_hospital, 'Prescription'),
                        SizedBox(width: 10),
                        _buildRecordTypeIcon(Icons.description, 'Invoice'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Record Created On',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '27 Feb, 2021',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0EBE7F),
                          ),
                        ), 
                        SizedBox(width: 200),
                        Icon(Icons.edit),
                      ],
                    ),
                    SizedBox(height: 70),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllRecord()));
                      },
                      child: Container(
                        width: 300,
                        height: 54,
                        child: Center(
                          child: Text(
                            'Upload Record',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0EBE7F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecordTypeIcon(IconData iconData, String label) {
    return Column(
      children: [
        Icon(iconData, size: 17),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}