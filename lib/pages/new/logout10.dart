import 'package:doctor_hunt_app/pages/new/doctorsfind11.dart';
import 'package:flutter/material.dart';

class LogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Log out', style: TextStyle(fontWeight: FontWeight.bold)),
      content: Text('Are you sure you want to logout?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, false); // No
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DoctorFindPage2()));
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}

Future<bool> showLogoutDialog(BuildContext context) async {
  final result = await showDialog(
    context: context,
    builder: (context) => LogoutDialog(),
  );
  return result ??
      false; // Handles case where dialog is dismissed without selection
}
