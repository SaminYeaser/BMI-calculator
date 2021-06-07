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
        // SizedBox(
        //   height: 10,
        // ),
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
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            inactiveTickMarkColor: Color(0xFF8D8E98),
            activeTickMarkColor: Colors.white,
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15)
          ),
          child: Slider(
              value: height.toDouble(),
              min: 120,
              max: 220,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.toInt();
                });
              }),
        )
      ],
    );
  }
}
