import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable.dart';
import 'resultpage.dart';
import 'bmi_logic.dart';

const fontsize = 20.0;
int height = 180;
int age = 20;
int weight=60;
const borderstyle = BorderSide(
  color: Colors.black,
  width: 1,
);
Color malegendercolour=Colors.blueGrey[200];
Color femalegendercolour=Colors.blueGrey[200];

const iconstyle=BoxDecoration(
  shape: BoxShape.circle,
  border: Border(
    left: borderstyle,
    right: borderstyle,
    top: borderstyle,
    bottom: borderstyle,
  ),
);




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('BMI CALCULATOR'),),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: malegendercolour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.mars, size: 80.0),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(fontSize: fontsize),
                          )
                        ],
                      ),
                      changecolour: (){
                        setState(() {
                          malegendercolour=malegendercolour==Colors.blueGrey[200]?Colors.blueGrey[600]:Colors.blueGrey[200];
                          femalegendercolour=femalegendercolour==Colors.blueGrey[600]?Colors.blueGrey[200]:Colors.blueGrey[200];
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: femalegendercolour,
                      changecolour: (){
                        setState(() {
                          femalegendercolour=femalegendercolour==Colors.blueGrey[200]?Colors.blueGrey[600]:Colors.blueGrey[200];
                          malegendercolour=malegendercolour==Colors.blueGrey[600]?Colors.blueGrey[200]:Colors.blueGrey[200];
                        });

                      },
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.venus, size: 80.0),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(fontSize: fontsize),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: Colors.blueGrey[200],
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT:",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 300.0,
                            onChanged: (double value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                            activeColor: Colors.black,
                            inactiveColor: Colors.blueGrey[300],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: Colors.blueGrey[200],
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE:",
                            style: TextStyle(fontSize: fontsize),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                ),
                              ),
                              Text("yrs.")
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.black,
                                  ),
                                ),
                                decoration: iconstyle,
                              ),
                              SizedBox(width: 20.0,),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        age += 1;
                                      },
                                    );
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.black,
                                  ),
                                ),
                                decoration: iconstyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: Colors.blueGrey[200],
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT:",
                            style: TextStyle(fontSize: fontsize),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                ),
                              ),
                              Text("KG")
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      weight -= 1;
                                    },);
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.black,
                                  ),
                                ),
                                decoration: iconstyle,
                              ),
                              SizedBox(width: 20.0,),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    setState(
                                          () {
                                        weight += 1;
                                      },
                                    );
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.black,
                                  ),
                                ),
                                decoration: iconstyle,
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
            Container(
              width: double.infinity,
              color: Colors.black,
              child: FlatButton(
                child: Text(
                  'PROCEED',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20.0, letterSpacing: 5.0),
                ),
                height: 80.0,
                onPressed: () {
                  Logic bmi=Logic(
                    height: height,
                    weight: weight,
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Result(
                      bmi_score:bmi.calculateBMI() ,
                      weightstats: bmi.weightstatus(),
                      comments: bmi.comments(),

                    );
                  },),);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
