import 'package:bmi/colors/colorsSection.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  @override
  _HeightSectionState createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
                child: Text(
              'Height',
            ))),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: HugeNumber,
            ),
            Text('cm')
          ],
        ),
        Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            onChanged: (double newValue) {
              setState(() {
                height = newValue.toInt();
              });
            })
      ],
    );
  }
}
