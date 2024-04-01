import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/home_page.dart';
import 'package:doctor_hunt_app/pages/signup.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _agreeToTerms = false; // Deklarasi variabel _agreeToTerms
  String? _selectedGender;

  // Fungsi untuk menampilkan pop-up card
  void _showVerificationCodeDialog() {
  TextEditingController digit1Controller = TextEditingController();
  TextEditingController digit2Controller = TextEditingController();
  TextEditingController digit3Controller = TextEditingController();
  TextEditingController digit4Controller = TextEditingController();

  showModalBottomSheet(
    isScrollControlled: true, // Set isScrollControlled ke true
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20), // Jarak yang ditambahkan
              Text(
                "Enter 4 Digits Code",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Enter the 4 digits code that you received on your email.",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 54,
                      height: 54,
                      child: TextField(
                        controller: digit1Controller,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF67729429),
                              width: 1,
                            ),
                          ),
                          counterText: "", // Hide character counter
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      width: 54,
                      height: 54,
                      child: TextField(
                        controller: digit2Controller,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF67729429),
                              width: 1,
                            ),
                          ),
                          counterText: "", // Hide character counter
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      width: 54,
                      height: 54,
                      child: TextField(
                        controller: digit3Controller,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF67729429),
                              width: 1,
                            ),
                          ),
                          counterText: "", // Hide character counter
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      width: 54,
                      height: 54,
                      child: TextField(
                        controller: digit4Controller,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF67729429),
                              width: 1,
                            ),
                          ),
                          counterText: "", // Hide character counter
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action when continue button is pressed
                      _showResetPasswordDialog(); // Tampilkan pop-up reset password
                    },
                    child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0EBE7F), // Warna tombol continue
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(295, 54),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak tambahan agar tidak terlalu dekat dengan tombol
            ],
          ),
        ),
      );
    },
  );
}

void _showResetPasswordDialog() {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Set the new password for your account so you can login and access all the features.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: newPasswordController,
                decoration: InputDecoration(
                  hintText: 'New Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(0xFF67729429),
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                obscureText: true,
              ),
              SizedBox(height: 15),
              TextField(
                controller: reEnterPasswordController,
                decoration: InputDecoration(
                  hintText: 'Re Enter Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(0xFF67729429),
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                obscureText: true,
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BotNavBar()));
                    },
                    child: Text("Update Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0EBE7F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(295, 54),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showForgotPasswordDialog() {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enter your email for the verification process, we will send a 4-digit code to your email.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Tutup popup forgot password
                    _showVerificationCodeDialog(); // Tampilkan popup verification code
                  },
                  child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0EBE7F), // Warna tombol continue
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(295, 54),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}



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
                    "Welcome Back!",
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
                  // Google and Facebook buttons...
                  SizedBox(height: 20),
                  // TextFields and Login button...
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
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
                  SizedBox(height: 20),
                  SizedBox(
                    width: 295,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BotNavBar()));
                      },
                      child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
                    onPressed: _showForgotPasswordDialog, // Show forgot password dialog
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Color(0xFF0EBE7F)),
                    ),
                  ),
                  SizedBox(height: 180), 
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Don't Have Account? Join Us",
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