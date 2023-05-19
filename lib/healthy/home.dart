import 'package:flutter/material.dart';
import 'package:projet_nan/healthy/results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Round-Icons.dart';
import 'bottom-button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

Color inactiveColor = Color(0xFF111328);
Color activeColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;



TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

 TextStyle NumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  
);
const largeButtonTextStyle = TextStyle(
     fontSize: 25.0,
     fontWeight: FontWeight.bold,
);

const TitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const BodyTextStyle = TextStyle(
   fontSize: 18.0,
   color: Colors.white


);

enum Gender{
  male,
  female,
}


class _CalculatorState extends State<Calculator> {

   Gender? selectedGender;
   int height = 180;
   int weight = 60;
   int age = 20;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.male? activeColor : inactiveColor, 
                        cardChild: IconItems(
                          icon: FontAwesomeIcons.mars, 
                          label: 'MALE',
                          ),
                        ),
                    ),
                  ),
                 Expanded(
                  child:  GestureDetector(
                    onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female? activeColor : inactiveColor,
                      cardChild:  IconItems(
                          icon: FontAwesomeIcons.venus, 
                          label: 'FEMALE',
                          )
                          ),
                  ),
                  ),
                ],
              )),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height",
                    style: labelTextStyle
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: NumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        // overlayColor: Color(0x29EB1555),
                        thumbShape : RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                      ),
                      child: Slider(
                        value: height.toDouble(), 
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue){
                          setState(() {
                             height = newValue.round(); // round permet de faire un arrondi des valeurs
                          });
                         
                        },
                        ),
                    )
                  
                  ],
                ),
                  
              ),
              ),
             Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:  ReusableCard(
                      colour: activeColor,
                      cardChild:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: labelTextStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: NumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIcons(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },    
                                  ),
                                  const SizedBox(
                                     width: 10.0,
                                 ),
                               RoundIcons(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    }, 
                                ),
                                ],
                              ),
                            
                            ],
                ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: NumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIcons(icon: FontAwesomeIcons.minus, 
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },),
                              SizedBox(width: 10.0),
                              RoundIcons(icon: FontAwesomeIcons.plus, 
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },),

                            ],
                          )

                        ],
                      ),
                    ),
                 ),

                 BottomButton(buttonTitle: 'Calculate', 
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
                 },)
                ],

              )),

          ],
        )
      ),
    );
  }
}



class RoundIcons extends StatelessWidget {
   RoundIcons({required this.icon, required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
       elevation: 6.0,
      child: Icon(icon),
      onPressed: (){
        onPressed();

      },
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF4C4F5E),
      );
  }
}



class ReusableCard extends StatelessWidget {
 ReusableCard({ required this.colour, required this.cardChild,});
  
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
                  );
  }
}