// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  
  double width;

  double height;
  
  final Color backgroundColor, textColor;

  String data;

  double textSize;
  
  FontWeight fontWeight;

  CustomButton({super.key, required this.onTap, required this.width, required this.backgroundColor, required this.data, required this.height, required this.textColor, required this.textSize, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          ),
        alignment: Alignment.center,
        child: Text(
          data,
          style: TextStyle(
           color: textColor, 
           fontSize: textSize,
           fontWeight: fontWeight,
           ),
        ),
      ),
    );
  }
}
