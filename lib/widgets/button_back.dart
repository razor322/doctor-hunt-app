import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final BuildContext context;
  final Widget nextPage; // Halaman yang ingin dituju

  const BackButtonWidget({required this.context, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 25,
        ),
      ),
    );
  }
}
