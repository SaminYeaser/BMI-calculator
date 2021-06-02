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
                Expanded(child: ReuseableCard(colour: boxContainerColors)),
                Expanded(child: ReuseableCard(colour: boxContainerColors))
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: boxContainerColors),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(child: ReuseableCard(colour: boxContainerColors)),
              Expanded(child: ReuseableCard(colour: boxContainerColors))
            ],
          )),
          Container(
            color: footerContainerColor,
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
