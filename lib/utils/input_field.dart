// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputField extends StatelessWidget {
   bool obscureText;
  
   TextEditingController controller;
  
   String hintText;

   Widget suffixIcon;
  
   Widget prefixIcon;

  InputField({super.key, this.obscureText = false, required this.controller, required this.hintText, this.suffixIcon = const SizedBox(), this.prefixIcon = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 60,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(200, 200, 200, 1)
        )
     ),
     child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(243, 243, 243, 1),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
              color: Color.fromRGBO(103, 103, 103, 1),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )
          ),
        ),
      
    );
  }
}