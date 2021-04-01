import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReuseableCard extends StatelessWidget {

  Color colour;
  Widget cardchild;
  Function changecolour;

  ReuseableCard({@required this.colour,this.cardchild,this.changecolour});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changecolour,
      child: Container(
        child: cardchild,
        color: colour,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}