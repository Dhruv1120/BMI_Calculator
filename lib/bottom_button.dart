import 'package:flutter/material.dart';
import 'constant.dart';


class bottomButton extends StatelessWidget {
  final String buttontitle;
  final Function onTap;

  bottomButton({this.buttontitle,this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttontitle,
            style: klargebuttonstyle,
          ),
        ),
        color: bottomColor,
        margin: EdgeInsets.only(top:10.0),
        padding: EdgeInsets.only(bottom: 12.0),
        width: double.infinity,
        height: heightConst,
      ),
    );
  }
}
