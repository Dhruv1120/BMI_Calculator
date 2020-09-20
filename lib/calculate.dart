import 'dart:math';

import 'package:flutter/material.dart';


class calculator{
  final int height;
  final int weight;

  double _bmi;

  calculator({this.height,this.weight});

  String calculateBMI(){
    _bmi = weight / pow(height/100 , 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if(_bmi>=25){
      return 'Overweight';
    }else if (_bmi>18.5){
      return 'Normal';
    }else{
      return 'underweight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You are overweight so you need to do  more exercise';
    }else if (_bmi>18.5){
      return 'You have a normal body';
    }else{
      return 'You have a lower weight than a normal body';
    }
  }
}