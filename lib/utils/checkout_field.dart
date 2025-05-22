// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutField extends StatelessWidget {
  bool obscureText;

  TextEditingController controller;

  String hintText;

  CheckoutField(
      {super.key,
      this.obscureText = false,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color.fromRGBO(200, 200, 200, 1))),
      child: TextFormField(
        style: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(0, 0, 0, 1),
          letterSpacing: 0.5
        ),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(255, 255, 255, 1),
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
              color: Color.fromRGBO(103, 103, 103, 1),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
