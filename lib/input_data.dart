import 'iconcontent.dart';
import 'button.dart';
import 'results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator_brain.dart';
const knumberstyle = TextStyle(
fontSize: 50.0,color: Color(0XFF000258),fontWeight: FontWeight.w900,
);
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int height = 150;
  int weight = 60;
  int age = 18;
      Color inactive=Color(0XFF4C9AE5);
  Color active=Colors.red;
  Color initial=Color(0XFF4C9AE5);
  void updatecolor()
  {
    if(initial==inactive){initial=active;}
    else{initial=inactive;}
  }
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
        title: Center(child: Text('BMI Calulator')),
        backgroundColor: Color(0XFF6300C7),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,

            colors: [Color(0XFF000258),Color(0XFF03067E),Color(0XFF01077E),Color(0XFF2833FF),Color(0XFF3851FF)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Expanded(
              child: Row(
               children: [
                 Expanded(child:
                 GestureDetector(
                   onTap: (){print('tap');
                     setState(() {
                      updatecolor();
                     });

                     },
                     child: button(colour: initial,cardchild: iconcontent(label: 'Male',ficons: FontAwesomeIcons.male,),))),
                 Expanded(child: button(colour: Color(0XFF4C9AE5),cardchild: iconcontent(label: 'Female',ficons: FontAwesomeIcons.female,),)),
               ],
              ),
            ),
            Expanded(child: button(colour: Color(0XFF4C9AE5),cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Text('Height',

    style:TextStyle(
    fontSize: 20.0,color: Color(0XFF000258),
    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,

                  children:<Widget> [
                    Text(height.toString(),
                  style: knumberstyle,
                ),
                    Text('cm',
                    style: knumberstyle,),

                  ],

                ),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Colors.red,
                  ),

                  child: Slider(

                    value: height.toDouble(),
                    min: 100.0,
                    max: 250.0,
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    onChanged: (double newvalue){
                      setState(() {
                        height=newvalue.round();
                      });

                    },
                  ),
                ),
              ],
            ),)),
            Expanded(child: Row(
              children: [
                Expanded(child: button(colour: Color(0XFF04001A),cardchild: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                        Text('WEIGHT',
                          style: labeltextstyle,
                        ),
                    Text(
                      weight.toString(),
                      style: knumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Roundiconbutton(icon: FontAwesomeIcons.plus,
                          Pressed: (){
                          setState(() {
                            weight++;
                          });
                          } ,),
                        SizedBox(width: 10.0,),
                        Roundiconbutton(icon: FontAwesomeIcons.minus,
                        Pressed: (){
                          setState(() {
                          weight--;
                          });
                        },
                        ),
                      ],
                    ),
                    
                  ],
                ),)),
                Expanded(child: button(colour: Color(0XFF04001A),cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text('Age',
                      style: labeltextstyle,
                    ),
                    Text(age.toString(),
                    style: knumberstyle ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Roundiconbutton(icon: FontAwesomeIcons.plus, Pressed: (){
                          setState(() {
                            age++;
                          });
                        }),
                        SizedBox(width:10.0,),
                        Roundiconbutton(icon: FontAwesomeIcons.minus , Pressed: (){
                          setState(() {
                            age--;
                          });
                        }),
                      ],
                    ),

                  ],
                ),)),
              ],
            )),
            GestureDetector(
              onTap: (){
               CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                  bmiresult: calc.calculateBMI(),
                  resultText: calc.getresult(),
                  interpretattion: calc.getInterpretation(),
                )));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,

                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,

                    colors: [Color(0XFF000258),Colors.white],
                  ),
                 ),
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.only(bottom: 20.0,),
                height: 70.0,
                width: double.infinity,

              ),
            ),
          ],
        ),
      ),

    );
  }
}

class Roundiconbutton extends StatelessWidget {
Roundiconbutton({required this.icon,required this.Pressed});
final IconData icon;
final Function Pressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 5.0,
      child: Icon(icon),

      // disabledElevation: 0.0,
      onPressed: (){Pressed;},
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white,
    );
  }
}

