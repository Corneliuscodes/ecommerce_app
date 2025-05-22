// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cont extends StatefulWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  _ContState createState() => _ContState();
}

class _ContState extends State<Cont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 253, 253, 1),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Container(
          height: 189,
          width: double.maxFinite,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Container(
            padding: EdgeInsets.only(left: 16),
            height: 189,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 255, 255, 1),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/Rectangle 48.png',
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '50-40% OFF',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Now in (product)',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'All colours',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Shop Now',
                          style: GoogleFonts.montserrat(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
