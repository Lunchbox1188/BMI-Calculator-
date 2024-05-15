import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomHeightContainer = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomCardColor = Color(0xFFBE1555)


class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color:bottomCardColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomHeightContainer,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour);

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
