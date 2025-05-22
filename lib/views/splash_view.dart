// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:e_commerce_project/views/sign_in.dart';
import 'package:e_commerce_project/views/splash1.dart';
import 'package:e_commerce_project/views/splash2.dart';
import 'package:e_commerce_project/views/splash3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  PageController _controller = PageController();
  bool onFirstPage = false;
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onFirstPage = (index == 0);
                onLastPage = (index == 2);
              });
            },
            children: [
              Splash1(),
              Splash2(),
              Splash3(),
            ],
          ),
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            alignment: Alignment(0, 0.95),
            child: Padding(
              padding: const EdgeInsets.only(left: 17, right: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  onFirstPage
                      ? Text('    ')
                      : GestureDetector(
                          onTap: () {
                            _controller.previousPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn
                                );
                          },
                          child: Text(
                            'Prev',
                            style: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          )),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        expansionFactor: 4,
                        dotColor: Color.fromRGBO(23, 34, 59, 0.2),
                        activeDotColor: Color.fromRGBO(23, 34, 59, 1),
                        spacing: 10),
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignIn();
                            }));
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Color.fromRGBO(248, 55, 88, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Color.fromRGBO(248, 55, 88, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
