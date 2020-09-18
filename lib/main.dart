import 'package:flutter/material.dart';
import 'package:teamakyra/screens/usertype.dart';

void main() {
  runApp(Atmanirbhar());
}

class Atmanirbhar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atmanirbhar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserType(),
    );
  }
}
