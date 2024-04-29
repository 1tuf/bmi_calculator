import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color colour;
  final Column cardChild;
  ResuableCard(this.colour, this.cardChild);
  //final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(child: cardChild),
    );
  }
}
