// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:e_commerce_project/models/cont_listt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Color.fromRGBO(253, 253, 253, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, top: 44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      size: 30,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Text(
                    'Checkout',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('           '),
                  //Icon(Icons.navigate_before),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.maxFinite,
              // height: 10,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(198, 198, 198, 0.2)
                      // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                      )),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 33.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(168, 168, 169, 1),
                                letterSpacing: -0.7),
                          ),
                          Text(
                            '₹ 7,000.00',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(168, 168, 169, 1),
                                letterSpacing: -0.7),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(168, 168, 169, 1),
                                letterSpacing: -0.7),
                          ),
                          Text(
                            '₹ 30',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(168, 168, 169, 1),
                                letterSpacing: -0.7),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(76, 80, 89, 1),
                                letterSpacing: -0.7),
                          ),
                          Text(
                            '₹ 7,030.00',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(76, 80, 89, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: Container(
                        width: double.maxFinite,
                        // height: 10,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(196, 196, 196, 1)
                                // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                                )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: Text(
                        'Payment',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(34, 34, 34, 1),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 327,
                      width: double.maxFinite,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: ContListt.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 59,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color.fromRGBO(244, 244, 244, 1),
                                      border: Border.all(
                                        color: _selectedIndex == index
                                            ? Color.fromRGBO(248, 55, 88, 1)
                                            : Color.fromRGBO(244, 244, 244, 1),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(ContListt[index].image),
                                        Text(
                                          ContListt[index].words,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: ((context) {
                            Timer(Duration(seconds: 3), () {
                              // Set the duration (3 seconds in this example)
                              Navigator.of(context).pop(); // Dismiss the dialog
                            });
                            return AlertDialog(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                      Stack(
                                    children: [
                                      Container(
                                        width: 91,
                                        height: 91,
                                        child: Image.asset('assets/Star 1.png')
                                        ),
                                        Container(
                                        width: 91,
                                        height: 91,
                                        alignment: Alignment.center,
                                        child: Image.asset('assets/Vector 5.png'),
                                        ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text('Payment done successfully',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(34, 34, 34, 1)
                                  ),)
                                ],
                              ),
                            );
                          }),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 59,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(248, 55, 88, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Continue',
                          style: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
