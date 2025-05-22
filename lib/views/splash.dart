// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:e_commerce_project/views/splash1.dart';
import 'package:e_commerce_project/views/splash_view.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,
      MaterialPageRoute(builder: (context){
        return SplashView();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child://Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //children: [
              Image.asset('assets/logoipsum-255 1.png'),
            //  ],
          // ),
          ),
           Positioned(
              bottom: 10,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*1,
                child: Image.asset('assets/01.png'))
           ),
        ],
      ),
    );
  }
}