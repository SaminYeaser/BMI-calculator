import 'package:bmi/colors/colorsSection.dart';
import 'package:bmi/functions/bmiCalculation.dart';
import 'package:bmi/modelClass.dart';

import 'package:bmi/widgets/reuseableCard.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    setState(() {
      data = BmiCalculation().BmiCalculator();
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: activeCardColors,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$data',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text('${Bmi.comment}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              color: footerContainerColor,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: Center(
                  child: Text(
                'Re-calculate',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              )),
            ),
          )
        ],
      ),
    );
  }
}
