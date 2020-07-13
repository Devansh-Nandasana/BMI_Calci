import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.child,this.color,this.onPress});
  final void Function() onPress;
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
        child: Container(
    child:child,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: color,
    ),
    margin: EdgeInsets.all(15.0),
    
        ),
      );
  }
}

