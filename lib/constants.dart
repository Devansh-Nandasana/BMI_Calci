import 'package:flutter/material.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

const Color activecardcolor=Color(0xFF1C1C2D);
const Color inactivecardcolor=Color(0xFF111328);
const TextStyle klabelTextStyle=TextStyle(
                          color:Color(0xFF7C7C8C),
                          fontSize: 20.0,
);
const TextStyle knumberTextStyle=TextStyle(
                          fontSize:80.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        );
enum Gender{
  male,
  female,
}
AlertStyle kstyle=AlertStyle(
  backgroundColor: Colors.white,
);