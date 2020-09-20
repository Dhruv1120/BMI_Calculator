import 'package:flutter/material.dart';
import 'package:json_app/constant.dart';
import 'package:json_app/reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({this.bmiResult,this.resultText,this.interPretation});

  final String bmiResult;
  final String resultText;
  final String interPretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your result',
                style: ktitletextstyle,),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(resultText,
                    style: resultstyle ),
                  Text(
                    bmiResult,
                    style: bmistyle,
                  ),
                  Text(
                      interPretation,
                    style: bodytext,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          bottomButton(
            buttontitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
