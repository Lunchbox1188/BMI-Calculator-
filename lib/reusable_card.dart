import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, required this.cardChild});

  final Color? colour;
  final Widget cardChild;

  static Color activeCardColor = Color(0xFF1D1E33);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour ?? activeCardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
