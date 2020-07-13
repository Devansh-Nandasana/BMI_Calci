import 'package:bmi_calculator/Functionality.dart';
import 'package:bmi_calculator/LastButton.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'ReusableCard.dart';

class SecondPage extends StatelessWidget {

  SecondPage({this.result});
  final double result;
  @override
  Widget build(BuildContext context) {

  Functionality obj=Functionality( result: result);
  obj.calculateResultText();
  obj.calculateResultDescription();
    return Scaffold(
      appBar:AppBar(
        title: Row(
          children: <Widget>[
            SizedBox(
              width:62.0,
            ),
            Text('BMI CALCULATOR'),
          ],
        ),
      ),
      body: Column(
        children:<Widget>[
           Expanded(
                        child: Container(
                        child: Center(
                          child: Text(
                            'YOUR RESULT',
                            style: TextStyle(
                              fontSize:50.0,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
           ),
          Expanded(
            flex:5,
            child: ReusableCard(
              color: activecardcolor,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      obj.getResultText(),
                      style: TextStyle(
                        color:Colors.green,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      result.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 120.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      obj.getResultDescription(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
            LastButton(
              text: 'RE-CALCULATE',
              onTap: (){
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}