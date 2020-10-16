import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    color: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              color: Color(0xFF1D1F33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    color: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Color color;

  MyCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
