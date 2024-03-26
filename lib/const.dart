import 'package:flutter/material.dart';

const Color primary = Color(0xff0EBE7F);

const Color grayCol = Color(0xff858EA9);

const Color titleCol = Color(0xff333333);
const Color subtitleCol = Color(0xff677294);

final Color subtitleWithOpacity = subtitleCol.withOpacity(0.9);

const FontWeight fw500 = FontWeight.w500;
const FontWeight fw400 = FontWeight.w400;

const DecorationImage backgroundImage = DecorationImage(
  image: AssetImage('assets/images/bg.png'),
  fit: BoxFit.cover,
);

const double fs14 = 14.0;
const double fs18 = 18.0;

const LinearGradient linearGradient = LinearGradient(
  colors: [
    Color(0xff0EBE7E),
    Color(0xff07D9AD),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
