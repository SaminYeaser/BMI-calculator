import 'package:bmi/widgets/reuseableCard.dart';
import 'package:flutter/material.dart';
import 'colors/colorsSection.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(colour: Color(0xFF1D1E33))),
                Expanded(
                    child: ReuseableCard(colour: Color(0xFF1D1E33)))
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: Color(0xFF1D1E33)),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseableCard(colour: Color(0xFF1D1E33))),
              Expanded(
                  child: ReuseableCard(colour: Color(0xFF1D1E33)))
            ],
          )),
          Container(
            color: Color(0xFFEB1555),
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
