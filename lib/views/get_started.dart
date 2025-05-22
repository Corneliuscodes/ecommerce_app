// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/utils/custom_button.dart';
import 'package:e_commerce_project/views/home_page.dart';
import 'package:e_commerce_project/views/nav_screen.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 34),
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/unsplash_fouVDmGXoPI (1).png'),
            fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('You want\nAuthentic, here \nyou go!',
            style: TextStyle(
              fontSize: 34,
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Find it here, buy it now!',
            style: TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(242, 242, 242, 1),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return NavScreen();
              }));
            },
            height: 55,
            width: 279,
            backgroundColor: Color.fromRGBO(248, 55, 88, 1),
            data: 'Get Started',
            textColor: Color.fromRGBO(255, 255, 255, 1),
            textSize: 20,
            fontWeight: FontWeight.w400,
          ),
          ],
        ),
      ),
    );
  }
}