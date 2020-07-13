
import 'package:flutter/material.dart';


class LastButton extends StatelessWidget {
  
  LastButton({this.text,this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
                child: Container(
              color: Colors.pink,
              height: 70.0,
              width:double.infinity,
              child: Center(
                child: Text(
                  text,
                  
                  style:TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
    );
  }
}
