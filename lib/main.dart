import 'package:flutter/material.dart';
import 'input_data.dart';
void main()
{runApp(bmi());}

class bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF6300C7),
        accentColor: Color(0XFF6100C4),
        scaffoldBackgroundColor: Color(0XFF6300C7),
        textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),

    home: Home(),
    );
  }
}
