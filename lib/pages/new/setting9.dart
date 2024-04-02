import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/pages/advanced_drawer.dart';
import 'package:doctor_hunt_app/pages/new/logout10.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: backgroundImage),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 36, left: 5, bottom: 20),
                  child: Row(
                    children: [
                      BackButtonWidget(
                          context: context, nextPage: HomeScreen()),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: fw400,
                              fontFamily: "Rubik"),
                        ),
                      )
                    ],
                  ),
                ),
                // Account settings section
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account Setting',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(height: 16.0),
                ListTile(
                  leading: Image.asset('assets/icons/icon_5.png'),
                  title: Text('Change Password'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle change password action
                    print('Change Password');
                  },
                ),
                Divider(height: 1.0),
                ListTile(
                  leading: Image.asset('assets/icons/icon_6.png'),
                  title: Text('Notifications'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(height: 1.0),
                ListTile(
                  leading: Image.asset('assets/icons/icon_7.png'),
                  title: Text('Statistics'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle view statistics action
                    print('View Statistics');
                  },
                ),
                Divider(height: 1.0),
                ListTile(
                  leading: Image.asset('assets/icons/icon_8.png'),
                  title: Text('About us'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle about us action
                    print('Show About Us');
                  },
                ),

                // Removed duplicate "Account settings" section
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'More Options',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),

                ListTile(
                  title: Text('Text messages'),
                  trailing: Switch(
                    value: true, // Set initial state (optional)
                    onChanged: (bool value) => setState(() => value = value),
                  ),
                  onTap: () {},
                ),
                Divider(height: 1.0),
                ListTile(
                  title: Text('Phone calls'),
                  trailing: Switch(
                    value: true, // Set initial state (optional)
                    onChanged: (bool value) => setState(() => value = value),
                  ),
                ),
                Divider(height: 1.0),
                ListTile(
                  title: Text('Languages'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle view statistics action
                    print('View Statistics');
                  },
                ),
                Divider(height: 1.0),
                ListTile(
                  title: Text('Currency'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle about us action
                    print('Show About Us');
                  },
                ),
                Divider(height: 1.0),
                ListTile(
                  title: Text('Linked accounts'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle about us action
                    print('Show About Us');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
