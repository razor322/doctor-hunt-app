import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/new/privacy8.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class PatientDetailsPage extends StatefulWidget {
  @override
  _PatientDetailsPageState createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Bungkus seluruh body dengan Stack untuk memposisikan gambar latar belakang
        body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      // Konten yang ada di sini
      SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 5, bottom: 20),
              child: Row(
                children: [
                  BackButtonWidget(context: context, nextPage: HomeScreen()),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Patient Details',
                      style: TextStyle(
                          fontSize: 18, fontWeight: fw400, fontFamily: "Rubik"),
                    ),
                  )
                ],
              ),
            ),
            // Judul dan Step
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Step 1/4',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),

            // Divider
            Divider(height: 16),

            // Formulir
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Pasien
                  Text(
                    'Nama Pasien',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),

                  // Umur
                  Text(
                    'Umur',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      // Hari
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Hari',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                      SizedBox(width: 16),

                      // Bulan
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Bulan',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                      SizedBox(width: 16),

                      // Tahun
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Tahun',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),

                  // Jenis Kelamin
                  Text(
                    'Jenis Kelamin:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  Row(
                    children: [
                      Radio(
                        value: 'Pria',
                        groupValue: '',
                        onChanged: (value) {},
                      ),
                      Text('Pria'),
                      SizedBox(width: 16),
                      Radio(
                        value: 'Wanita',
                        groupValue: '',
                        onChanged: (value) {},
                      ),
                      Text('Wanita'),
                      SizedBox(width: 16),
                      Radio(
                        value: 'Lainnya',
                        groupValue: '',
                        onChanged: (value) {},
                      ),
                      Text('Lainnya'),
                    ],
                  ),

                  Text(
                    'Nomor Telepon',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nomor Telepon',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),

                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),

            // Tombol Lanjutkan
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Center(
                child: Container(
                  width: 280,
                  height: 34,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: primary,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrivacyPage()));
                    },
                    child: Text('Continue'),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
