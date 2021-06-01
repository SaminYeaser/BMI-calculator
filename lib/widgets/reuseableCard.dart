import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;

  ReuseableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
