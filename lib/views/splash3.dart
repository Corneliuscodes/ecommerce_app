// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/views/sign_in.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
            alignment: Alignment.topCenter,
            color:Colors.white,
            width: double.infinity,
            height: double.infinity,
            child:
            Padding(
              padding: const EdgeInsets.only(left:17, right:17, top:45),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('3',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),),
                          Text('/3',
                          style: TextStyle(
                            color: Color.fromRGBO(160, 160, 161, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),)
                        ],
                      ),
                      InkWell(
                        onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context){
                            return SignIn();
                          }));
                      },
                        child: Text('Skip',
                        style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 18,
                              //fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                             ),
                              ),
                      )
                    ],
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:17, right:17,),
            child: Container(
              height: double.maxFinite,
                    width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/splash3.png'),
                        Text('Get Your Order',
                        style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                              textAlign: TextAlign.center,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                          style: TextStyle(
                                color: Color.fromRGBO(168, 168, 169, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,),
                        )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}