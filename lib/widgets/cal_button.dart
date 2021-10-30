import 'package:flutter/material.dart';

class Cal_Button extends StatelessWidget {
  final String text ;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const Cal_Button({
    // bat buoc phai co tham so 
    required   this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            //bo tron button
            borderRadius: BorderRadius.circular(4.8),
          ),
          //FlatButton required onPressed and child
          child: Text(
            text ,
            style: TextStyle(fontSize: textSize),
          ),

          onPressed: () => callBack(text),
          //background color for button
          color:Color(fillColor),
          // color: Color(0xDD000000),
          textColor: Color(textColor),
          // textColor: Color(0xFFFFFFFF),

        ),
      ),
    );
  }
}
