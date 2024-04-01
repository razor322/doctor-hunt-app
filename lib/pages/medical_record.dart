import 'package:doctor_hunt_app/pages/add_record.dart';
import 'package:flutter/material.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({Key? key}) : super(key: key);

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'Medical Record',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 40), // Spacer
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/medicalrecord.png',
                  width: 214,
                  height: 214,
                ),
                SizedBox(height: 20),
                Text(
                  'Add a medical record.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'A Detailed Health history helps a doctor diagnose you better.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    _showAddRecordModal(context);
                  },
                  child: Container(
                    width: 270,
                    height: 54,
                    child: Center(
                      child: Text(
                        'Add a record',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0EBE7F), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showAddRecordModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add a Record',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Take a photo'),
                onTap: () {
                  // Action when Take a photo is tapped
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Upload From Gallery'),
                onTap: () {
                  // Action when Upload From Gallery is tapped
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_file),
                title: Text('Upload Files'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddRecord()));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}