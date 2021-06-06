import 'package:bmi/colors/colorsSection.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(padding: EdgeInsets.only(top: 20),
        child: Center(child: Text('Height',))),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('180', style: HugeNumber,),
            Text('cm')
          ],
        )
      ],
    );
  }
}
