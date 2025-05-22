// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/utils/custom_button.dart';
import 'package:e_commerce_project/utils/input_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 63, left: 32, right: 32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Forgot \nPassword',
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 36,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InputField(
            controller: emailController,
            hintText: 'Confirm Password',
            prefixIcon: Icon(
              Icons.lock,
              size: 24,
              color: Color.fromRGBO(98, 98, 98, 1),
            ),
            suffixIcon: Icon(
              Icons.visibility_outlined,
              size: 24,
              color: Color.fromRGBO(98, 98, 98, 1),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  '* ',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 75, 38, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'We will send you a message to set or reset',
                  style: TextStyle(
                      color: Color.fromRGBO(103, 103, 103, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Text(
              'your new password',
              style: TextStyle(
                  color: Color.fromRGBO(103, 103, 103, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomButton(
            onTap: () {},
            height: 55,
            width: double.maxFinite,
            backgroundColor: Color.fromRGBO(248, 55, 88, 1),
            data: 'Submit',
            textColor: Color.fromRGBO(255, 255, 255, 1),
            textSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ]),
      ),
    );
  }
}
