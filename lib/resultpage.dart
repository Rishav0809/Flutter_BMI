import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuseable.dart';


Color normal=Colors.green[800];
Color excess=Color(0xFFdc3545);
Color weightcolor=normal;
class Result extends StatelessWidget {

  final String weightstats;
  final String bmi_score;
  final String comments;
  Result({@required this.weightstats,@required this.bmi_score, @required this.comments});



  @override
  Widget build(BuildContext context) {

    weightcolor=weightstats=='NORMAL'?normal:excess;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("RESULT"),
          leading: FlatButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.blueGrey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ReuseableCard(
                  colour: Colors.blueGrey[200],
                  cardchild: Column(
                    children: [
                      Text(
                        weightstats,
                        style: TextStyle(
                          color: weightcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text(
                        bmi_score,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 90.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
                        child: Text(
                          comments,
                          style: TextStyle(


                            fontSize: 20.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.black,
                child: FlatButton(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        letterSpacing: 5.0),
                  ),
                  height: 80.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
