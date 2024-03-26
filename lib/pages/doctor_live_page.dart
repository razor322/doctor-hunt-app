// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor_hunt_app/const.dart';
import 'package:doctor_hunt_app/widgets/bottom_navigation_bar.dart';
import 'package:doctor_hunt_app/widgets/button_back.dart';
import 'package:flutter/material.dart';

class DoctorLivePage extends StatefulWidget {
  const DoctorLivePage({super.key});

  @override
  State<DoctorLivePage> createState() => _DoctorLivePageState();
}

class _DoctorLivePageState extends State<DoctorLivePage> {
  List viewer = [
    {
      'image': 'assets/images/chat1.png',
      'name': 'Everhart Tween',
      'msg': 'Thanks for shareing doctor ❤️'
    },
    {
      'image': 'assets/images/chat2.png',
      'name': 'Bonebrake Mash',
      'msg': 'They treat immune system disorders'
    },
    {
      'image': 'assets/images/chat3.png',
      'name': ' Everhart Tween',
      'msg': 'This is the largest directory 👍'
    },
    {
      'image': 'assets/images/chat4.png',
      'name': 'Comfort Love',
      'msg': 'Depending on their education 😯'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0x14000000),
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/doclive.png'),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                child: Stack(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            // color: Color(0x14000000),
                            image: DecorationImage(
                          image: AssetImage('assets/images/doclive.png'),
                          fit: BoxFit.cover,
                        ))),
                    Container(
                      color: Colors.black.withOpacity(0.2),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Bagian atas
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 36, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BackButtonWidget(
                                  context: context, nextPage: BotNavBar()),
                              Image.asset('assets/images/profile2.png')
                            ],
                          ),
                        ),
                        // Bagian tengah
                        SizedBox(
                          height: 300,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: viewer.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Image.asset(viewer[index]['image']),
                                title: Text(
                                  viewer[index]['name'],
                                  style: TextStyle(
                                      fontWeight: fw500,
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: "Rubik"),
                                ),
                                subtitle: Text(
                                  viewer[index]['msg'],
                                  style: TextStyle(
                                      fontWeight: fw400,
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontFamily: "Rubik"),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: primary,
                                      child:
                                          Image.asset('assets/icons/chat2.png'),
                                    ),
                                  ),
                                ),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: 48),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Icon(Icons.emoji_emotions_outlined),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Add a comment...',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "RubikLight",
                                    color: subtitleCol)),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
