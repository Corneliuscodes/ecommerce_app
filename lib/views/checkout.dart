// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/views/place_order.dart';
import 'package:e_commerce_project/views/splash1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Color.fromRGBO(253, 253, 253, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                  left: 5,
                ),
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
              Opacity(
                opacity: 0.2,
                child: Container(
                  width: double.maxFinite,
                  // height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(198, 198, 198, 1)
                          // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                          )),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                            Text(
                              ' Delivery Address',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 90,
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 90,
                                    width: MediaQuery.of(context).size.width *
                                        0.64,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25),
                                            blurRadius: 14,
                                            offset: Offset(0, 6),
                                            spreadRadius: -8,
                                          )
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Address :',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '216 St Paul\'s Rd, London N1 2LL, UK\nContact :  +44-784232',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 5,
                                      right: 5,
                                      child:
                                          Image.asset('assets/Group (1).png'))
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.04,
                              ),
                              Expanded(
                                child: Container(
                                  height: 90,
                                  width: double.maxFinite,
                                  //MediaQuery.of(context).size.width * 0.195,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          blurRadius: 14,
                                          offset: Offset(0, 6),
                                          spreadRadius: -8,
                                        )
                                      ]),
                                  child: Image.asset('assets/Group.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Shopping List',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return PlaceOrder();
                            }));
                          },
                          child: Container(
                            height: 191,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(255, 255, 255, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 14,
                                    offset: Offset(0, 6),
                                    spreadRadius: -8,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    height: 115,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/Mask group (12).png',
                                          height: 115,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric( vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Women\'s Casual Wear',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 12.5,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                ),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Variations : ',
                                                      style: GoogleFonts.montserrat(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 17,
                                                      alignment: Alignment.center,
                                                      width: 39,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: Color.fromRGBO(
                                                                14, 8, 8, 1),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2)),
                                                      child: Text(
                                                        'Black',
                                                        style: GoogleFonts.montserrat(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 6,
                                                    ),
                                                    Container(
                                                      height: 17,
                                                      alignment: Alignment.center,
                                                      width: 39,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: Color.fromRGBO(
                                                                14, 8, 8, 1),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2)),
                                                      child: Text(
                                                        'Red',
                                                        style: GoogleFonts.montserrat(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                              Row(
                                                children: [
                                                  Text(
                                                    '4.8 ',
                                                    style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      color:
                                                          Color.fromRGBO(0, 0, 0, 1),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 14,
                                                    color: Color.fromRGBO(
                                                        237, 179, 16, 1),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 14,
                                                    color: Color.fromRGBO(
                                                        237, 179, 16, 1),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 14,
                                                    color: Color.fromRGBO(
                                                        237, 179, 16, 1),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 14,
                                                    color: Color.fromRGBO(
                                                        237, 179, 16, 1),
                                                  ),
                                                  Icon(
                                                    Icons.star_half_outlined,
                                                    size: 14,
                                                    color: Color.fromRGBO(
                                                        187, 187, 187, 1),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 29,
                                                    alignment: Alignment.center,
                                                    width: 84,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color.fromRGBO(
                                                                202, 202, 202, 1)),
                                                        borderRadius:
                                                            BorderRadius.circular(4)),
                                                    child: Text(
                                                      '\$ 34.00',
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'upto 33% off',
                                                        style: GoogleFonts.montserrat(
                                                          fontSize: 8,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(
                                                              235, 48, 48, 1),
                                                        ),
                                                      ),
                                                      Text(
                                                        '\$ 64.00',
                                                        style: GoogleFonts.montserrat(
                                                            fontSize: 12,
                                                            decoration: TextDecoration
                                                                .lineThrough,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color.fromRGBO(
                                                                167, 167, 167, 1)),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      width: double.maxFinite,
                                      height: 1,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                        // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                                      )),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Order (1) :',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                      Text(
                          
                                        '\$ 34.00',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 191,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  blurRadius: 14,
                                  offset: Offset(0, 6),
                                  spreadRadius: -8,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  height: 115,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/Mask group (13).png',
                                        height: 115,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric( vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Men\'s Jacket',
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12.5,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                              ),
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'Variations : ',
                                                    style: GoogleFonts.montserrat(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 17,
                                                    alignment: Alignment.center,
                                                    width: 39,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Color.fromRGBO(
                                                              14, 8, 8, 1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                2)),
                                                    child: Text(
                                                      'Green',
                                                      style: GoogleFonts.montserrat(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Container(
                                                    height: 17,
                                                    alignment: Alignment.center,
                                                    width: 39,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Color.fromRGBO(
                                                              14, 8, 8, 1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                2)),
                                                    child: Text(
                                                      'Grey',
                                                      style: GoogleFonts.montserrat(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                            Row(
                                              children: [
                                                Text(
                                                  '4.7 ',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 12,
                                                    color:
                                                        Color.fromRGBO(0, 0, 0, 1),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Color.fromRGBO(
                                                      237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Color.fromRGBO(
                                                      237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Color.fromRGBO(
                                                      237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Color.fromRGBO(
                                                      237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star_half_outlined,
                                                  size: 14,
                                                  color: Color.fromRGBO(
                                                      187, 187, 187, 1),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 29,
                                                  alignment: Alignment.center,
                                                  width: 84,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color.fromRGBO(
                                                              202, 202, 202, 1)),
                                                      borderRadius:
                                                          BorderRadius.circular(4)),
                                                  child: Text(
                                                    '\$ 45.00',
                                                    style: GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 1)),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'upto 28% off',
                                                      style: GoogleFonts.montserrat(
                                                        fontSize: 8,
                                                        fontWeight: FontWeight.w500,
                                                        color: Color.fromRGBO(
                                                            235, 48, 48, 1),
                                                      ),
                                                    ),
                                                    Text(
                                                      '\$ 67.00',
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: 12,
                                                          decoration: TextDecoration
                                                              .lineThrough,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromRGBO(
                                                              167, 167, 167, 1)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: Container(
                                    width: double.maxFinite,
                                    height: 1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                      // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                                    )),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total Order (1) :',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    Text(

                                      '\$ 45.00',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
