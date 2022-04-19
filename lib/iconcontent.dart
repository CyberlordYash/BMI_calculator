import 'package:flutter/material.dart';
const labeltextstyle=TextStyle(
  fontSize: 20.0,color: Color(0XFF000258),
);
class iconcontent extends StatelessWidget {
  iconcontent({required this.label,required this.ficons});
  final String label;final IconData ficons;

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(
          ficons,
          color: Color(0XFF000258),
          size: 100.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(

          label,
          style:  labeltextstyle,

        )
      ],
    );
  }
}
