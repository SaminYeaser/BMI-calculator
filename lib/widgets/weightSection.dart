import 'package:bmi/colors/colorsSection.dart';
import 'package:flutter/material.dart';

class WeightSection extends StatefulWidget {
  @override
  _WeightSectionState createState() => _WeightSectionState();
}

class _WeightSectionState extends State<WeightSection> {
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: Text(
            'Weight',
            style: TextStyle(fontSize: 20),
          ),
          padding: EdgeInsets.only(top: 10, bottom: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              weight.toString(),
              style: HugeNumber,
            ),
            Text('kg')
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    weight = weight + 1;
                  });
                },
                child: Text('+'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF4C4F5E)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  padding:
                  MaterialStateProperty.all(EdgeInsets.zero),
                ),
              ),
            ),
            SizedBox(width: 10,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  weight = weight -1;
                });
              },
              child: Text('-'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF4C4F5E)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                padding:
                MaterialStateProperty.all(EdgeInsets.zero),
              ),
            )
          ],
        ),

      ],
    );
  }
}
