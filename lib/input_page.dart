import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'resultPage.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculate.dart';
import 'resultPage.dart';



enum Gender{
  male,
  female,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;
  int height=180;
  int weight=60;
  int age=22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(child: Row(
            children: <Widget> [
              Expanded(child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender=Gender.male;
                  });
                  },
                color: selectedGender == Gender.male ? activeColor : inactiveColor ,
                cardChild: IconContent(
                  icon:FontAwesomeIcons.mars, text:'MALE'
                ),
              ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                  setState(() {
                    selectedGender=Gender.female;
                  });
                  },
                  color: selectedGender == Gender.female ? activeColor : inactiveColor ,
                  cardChild:IconContent(
                      icon:FontAwesomeIcons.venus, text:'FEMALE'
                  ) ,
                ),
              ),
            ],
          ),
          ),
          Expanded(child: ReusableCard(
            color: activeColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text('HEIGHT',
                style: labeltextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline ,
                  children: <Widget> [
                    Text(height.toString(),
                    style: numberstyle),
                    Text('cm',
                    style: labeltextStyle,)
                  ],
                ),
                Slider(value:height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newvalue){
                  setState(() {
                    height=newvalue.round();
                  });
                  },
                )
              ],
            ),
          )
          ),
          Expanded(child: Row(
            children: <Widget> [
              Expanded(child: ReusableCard(
                color: activeColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text('WEIGHT',
                    style: labeltextStyle),
                    Text(weight.toString(),
                    style: numberstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundActionButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight=weight-1;
                              });
                            },
                        ),
                        SizedBox(width: 10.0),
                        RoundActionButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight=weight+1;
                            });
                          },)
                      ],
                    )

                  ],
                ),
              )
              ),
              Expanded(child: ReusableCard(
                color: activeColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text('AGE',
                          style: labeltextStyle),
                      Text(age.toString(),
                          style: numberstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundActionButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                age=age-1;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundActionButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                age=age+1;
                              });
                            },)
                        ],
                      )

                    ],
                  )
              )
              ),
            ],
          ),
          ),
          bottomButton(buttontitle: 'CALCULATE',onTap: (){
            calculator cal = calculator(height: height,weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context) =>ResultPage(
              bmiResult: cal.calculateBMI(),
              resultText: cal.getResults(),
              interPretation: cal.getInterpretation(),
            ),
            ),
            );
          },)
          ],
      ),
    );
  }
}








