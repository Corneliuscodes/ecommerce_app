 import 'package:e_commerce_project/views/animated_button_page.dart';
import 'package:e_commerce_project/views/cont.dart';
import 'package:e_commerce_project/views/home_page.dart';
import 'package:e_commerce_project/views/splash.dart';
import 'package:e_commerce_project/views/splash1.dart';
import 'package:e_commerce_project/views/splash3.dart';
import 'package:e_commerce_project/views/splash_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(253, 253, 253, 1),),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}


