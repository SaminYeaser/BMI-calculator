import 'package:bmi/colors/colorsSection.dart';
import 'package:flutter/material.dart';
import 'package:bmi/modelClass.dart';

class AgeSection extends StatefulWidget {

  @override
  _AgeSectionState createState() => _AgeSectionState();
}

class _AgeSectionState extends State<AgeSection> {

  Bmi obj = new Bmi(10, 50);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: Text(
            'Age',
            style: TextStyle(fontSize: 20),
          ),
          padding: EdgeInsets.only(top: 10, bottom: 20),
        ),
        Text(
          obj.age.toString(),
          style: HugeNumber,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    obj.age = obj.age + 1;
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
                  obj.age = obj.age -1;
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
