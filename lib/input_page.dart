import 'package:bmi/widgets/reuseableCard.dart';
import 'package:flutter/material.dart';
import 'colors/colorsSection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void setColor(GenderType gender) {
    if (gender == GenderType.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColors;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (gender == GenderType.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColors;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      setColor(GenderType.male);
                    });
                  },
                  child: ReuseableCard(
                    colour: maleCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      setColor(GenderType.female);
                    });
                  },
                  child: ReuseableCard(
                    colour: femaleCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Female', style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: activeCardColors),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(child: ReuseableCard(colour: activeCardColors)),
              Expanded(child: ReuseableCard(colour: activeCardColors))
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

enum GenderType { male, female }
