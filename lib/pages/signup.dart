import 'package:doctor_hunt_app/pages/login.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _agreeToTerms = false; // Deklarasi variabel _agreeToTerms
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 125,),
                  Text(
                    "Join us to start searching",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "You can search course, apply course and find scholarship for abroad studies",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 22,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Action when Google button is pressed
                          },
                          icon: Image.asset('assets/icons/google.png', height: 24, width: 24),
                          label: Text("Google", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 22,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Action when Facebook button is pressed
                          },
                          icon: Image.asset('assets/icons/facebook.png', height: 24, width: 24),
                          label: Text("Facebook", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 370,
                          height: 54,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF67729429),
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: 370,
                          height: 54,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF67729429),
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: 370,
                          height: 54,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF67729429),
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_off), // Toggle password visibility
                                onPressed: () {
                                  // Implement logic to toggle password visibility
                                },
                              ),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Checkbox(
                          visualDensity: VisualDensity.compact,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return Color(0xFF0EBE7F);
                              }
                              return Colors.black;
                            },
                          ),
                          value: _agreeToTerms,
                          onChanged: (value) {
                            setState(() {
                              _agreeToTerms = value ?? false;
                            });
                          },
                        ),
                      ),
                      Text(
                        "I agree with the Terms of Service",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: 295,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0EBE7F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Have an account? Log in",
                      style: TextStyle(color: Color(0xFF0EBE7F)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}