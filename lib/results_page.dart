
import 'package:flutter/material.dart';
import 'button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({required this.interpretattion,required this.bmiresult,required this.resultText} );
  final String bmiresult;
  final String resultText;
  final String interpretattion;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,

              colors: [Color(0XFF000258),Color(0XFF03067E),Color(0XFF01077E)],
            ),
          ),
        ),
        title: Text('Bmi calculator'),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Expanded(

                child: Text('Your Result:',
                  style:TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ) ,
                ),
            ),
          ),
          Expanded(
            flex: 5,
            child:button(colour:Color(0XFF000258),cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Text(resultText,
                style: TextStyle(
                  color: Color(0xFF24D876),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text(bmiresult,
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                Text(interpretattion,
                textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.blue,
                ),
                ),
              ],
            ),),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,

                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,

                  colors: [Color(0XFF4C9AE5),Colors.white],
                ),
              ),
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.only(bottom: 20.0,),
              height: 70.0,
              width: double.infinity,

            ),
          ),
        ],
      )
    );
  }
}
