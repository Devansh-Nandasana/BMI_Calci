import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'ReusableCard.dart';
import 'Icon_content.dart';
import 'RoundButton.dart';
import 'SecondPage.dart';
import 'LastButton.dart';
import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';


class InputPage extends StatefulWidget {
  @override 
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height=180;
  int weight=50;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:Column(
        children:<Widget>[
          Expanded(
            child: Row(
              children:<Widget>[
                Expanded(
                                  child: ReusableCard(
                    color: selectedGender==Gender.male?activecardcolor:inactivecardcolor,
                    onPress: (){
                        setState(() {
                         selectedGender=Gender.male;
                        });
                      },
                    child: IconContent(
                      
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                                  child: ReusableCard(
                    color: selectedGender==Gender.female?activecardcolor:inactivecardcolor,
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                      },
                    child: IconContent(
                      
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text(
                        'HEIGHT',
                        style:klabelTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            height.toString(),
                          style:knumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style:TextStyle(
                            fontSize:25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max:220.0,
                        divisions: 100,
                        // activeColor: Color(0xFFE94D66),
                        inactiveColor: Color(0xFF7C7C8C),
                        onChanged: (double newValue){
                          setState(() {
                            
                          height=newValue.round();
                          });
                        },
                        )
                    ],
                  ),
              color: activecardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children:<Widget>[
                Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          Text(
                            'WEIGHT',
                            style: klabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: knumberTextStyle,
                              ),
                              Text(
                            'kg',
                            style:TextStyle(
                            fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButton(
                                onPress: (){
                                  setState(() {
                                    if(weight==1)
                                    {
                                          Alert(
      context: context,
      style: kstyle,
      type: AlertType.error,
      title: "Weight can't be less than 1",
      desc: "Stop playing with my app",
      buttons: [
        DialogButton(
          color: Colors.red,
          child: Text(
            "Sorry",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                                    }
                                    else
                                    weight--;
                                  });
                                },
                                icons: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              RoundButton(
                                onPress: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icons: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    color: activecardcolor,
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                    color: activecardcolor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          Text(
                            'AGE',
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: knumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButton(
                                onPress: (){
                                  setState(() {
                                    if(age==1)
                                    {
                                          Alert(
      context: context,
      style: kstyle,
      type: AlertType.error,
      title: "Age can't be less than 1",
      desc: "Stop playing with my app",
      buttons: [
        DialogButton(
          color: Colors.red,
          child: Text(
            "Sorry",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                                    }
                                    else
                                    age--;
                                  });
                                },
                                icons: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              RoundButton(
                                onPress: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                icons: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
          LastButton(
            text: 'CALCULATE',
            onTap: (){
              if(selectedGender==null)
              {
                    Alert(
      context: context,
      style: kstyle,
      type: AlertType.error,
      title: "None Gender selected",
      desc: "plz select your Gender.. If your Gender not shown than Fuck off...",
      buttons: [
        DialogButton(
          color: Colors.red,
          child: Text(
            "Okay Dude",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
              }
              else
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(result: weight/pow(height/100, 2)) ));
      },
          ),
          ],
      )
      );
  }
}


