import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.icons,this.onPress});
  final IconData icons;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onPress,
      shape:CircleBorder(),
      fillColor: Color(0xFF7C7C8C),
      constraints: BoxConstraints.tightFor(
                width: 56.0,
                height: 56.0,
                ),
      child: Icon(
              icons,
            ),
    );
  }
}