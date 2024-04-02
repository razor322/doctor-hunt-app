//import 'package:doctorhunt/patient.dart';
import 'package:doctor_hunt_app/pages/new/patient_details7.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiagnosticTestPage extends StatefulWidget {
  const DiagnosticTestPage({super.key});

  @override
  State<DiagnosticTestPage> createState() => _DiagnosticTestPageState();
}

class _DiagnosticTestPageState extends State<DiagnosticTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Diagonstics Tests', // Title updated and bolded
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Added for better text alignment
              children: [
                Text(
                  'Get Full body health checkups from the comfort of your home.', // Added the title above the text
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                // Text description below the green container
                SizedBox(height: 20),
                Text(
                  'Upto 45% off + get 10% healthcash back',
                  style: TextStyle(fontSize: 12, color: Colors.green),
                ),

                // Row with 2 icons and labels
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconWithText(
                      icon: Icons.home,
                      text: 'Free home Sample pickup',
                      iconAssetPath:
                          'assets/icons/icon_10.png', // Replace with your icon asset path (optional)
                    ),
                    CustomIconWithText(
                      icon: Icons.sanitizer,
                      text: 'Practo asociate labs',
                      iconAssetPath:
                          'assets/icons/icon_11.png', // Replace with your icon asset path (optional)
                    ),
                  ],
                ),

                // Row with 2 icons and labels
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconWithText(
                      icon: Icons.report,
                      text: 'E-Reports in 24-72 hours',
                      iconAssetPath:
                          'assets/icons/icon_12.png', // Replace with your icon asset path (optional)
                    ),
                    CustomIconWithText(
                      icon: Icons.support_agent,
                      text: 'Free follow-up with a doctor',
                      iconAssetPath:
                          'assets/icons/icon_13.png', // Replace with your icon asset path (optional)
                    ),
                  ],
                ),

                // "Recommend for you" section
                SizedBox(height: 20),
                Text(
                  'Recommend for you',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                // Card with Advanced Young Indian Health Checkup details
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/icons/icon_14.png")),
                        Text(
                          'Advanced Young Indian Health Checkup',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Ideal for individuals aged 21-40 years',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '69 tests included',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$358',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              '\$330',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '35% off',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.green),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PatientDetailsPage()));
                              },
                              child: Text(
                                'Book Now',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0EBE7F),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '+10% Health cashback T&C',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/icons/icon_15.png")),
                        Text(
                          'Working Women’s Health Checkup',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Ideal for individuals aged 21-40 years',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '119 tests included',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 5),
                        Text(
                          '+10% Health cashback T&C',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/icons/icon_16.png")),
                        Text(
                          'Active Professional Health Checkup',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Ideal for individuals aged 21-40 years',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '100 tests included',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$457',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              '\$411',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '35% off',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.green),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '+10% Health cashback T&C',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}

// Custom widget for displaying an icon with text
class CustomIconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final String iconAssetPath;

  const CustomIconWithText({
    Key? key,
    required this.icon,
    required this.text,
    this.iconAssetPath = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        iconAssetPath != ''
            ? Image.asset(
                iconAssetPath,
                width: 40,
                height: 40,
              )
            : Icon(
                icon,
                size: 30,
              ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
