import 'package:flutter/material.dart';
class button extends StatelessWidget {
  button({required this.colour,required this.cardchild});
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(

          gradient: LinearGradient(
            begin: Alignment.topCenter,

            colors: [colour,Colors.white],
          ),

        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
