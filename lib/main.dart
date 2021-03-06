import 'package:bmi/bmiScreen.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0F0F1E),
        scaffoldBackgroundColor: Color(0xFF0E0F20),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/bmi' : (context) => BmiScreen()
      },
    );
  }
}


