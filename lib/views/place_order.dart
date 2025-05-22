// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/views/shipping.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Color.fromRGBO(253, 253, 253, 1),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 16, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.navigate_before,
                        size: 30,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    Text(
                      'Shopping Bag',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Container(
                          width: double.maxFinite,
                          height: 153,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/image 15.png',
                                //height: 115,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Women\'s Casual Wear',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    Text(
                                      'Checked Single-Breasted\nBlazer',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 86,
                                          color:
                                              Color.fromRGBO(242, 242, 242, 1),
                                          child: Row(
                                            children: [
                                              Text('Size'),
                                              Text('  42')
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 86,
                                          color:
                                              Color.fromRGBO(242, 242, 242, 1),
                                          child: Row(
                                            children: [
                                              Text('Qty'),
                                              Text('   1')
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Delivery by ',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              letterSpacing: -0.3),
                                        ),
                                        Text(
                                          '10 May 2XXX',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              letterSpacing: -1.1),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/🦆 icon _coupon_.png'),
                                Text(
                                  '  Apply Coupons',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      letterSpacing: -0.7),
                                )
                              ],
                            ),
                            Text(
                              'Select',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(248, 55, 88, 1),
                                  letterSpacing: -0.7),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17.0),
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
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Payment Details',
                              style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  letterSpacing: -0.7),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Amounts',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      letterSpacing: -0.7),
                                ),
                                Text(
                                  '₹ 7,000.00',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Convenience',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          letterSpacing: -0.7),
                                    ),
                                    Text(
                                      '  Know More',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(248, 55, 88, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Apply Coupon',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(234, 23, 18, 1),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery Fee',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      letterSpacing: -0.7),
                                ),
                                Text(
                                  'Free',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(248, 55, 88, 1),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17.0),
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
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Total',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      letterSpacing: -0.7),
                                ),
                                Text(
                                  '₹ 7,000.00',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'EMI Available',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      letterSpacing: -0.7),
                                ),
                                Text(
                                  '   Details',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(248, 55, 88, 1),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 146,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(248, 248, 248, 1),
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 22, right: 22, top: 30, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '₹ 7,000.00',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                                      Text(
                                        'View Details',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(248, 55, 88, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return Shipping();
                                      }));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 48,
                                      width: 219,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(248, 55, 88, 1),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Text(
                                        'Proceed to Payment',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(255, 255, 255, 1),
                                            letterSpacing: -0.41,
                                            ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Image.asset('assets/01.png')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
