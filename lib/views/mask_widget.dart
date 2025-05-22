// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaskWidget extends StatefulWidget {
  const MaskWidget({Key? key}) : super(key: key);

  @override
  _MaskWidgetState createState() => _MaskWidgetState();
}

class _MaskWidgetState extends State<MaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 253, 253, 1),
      body: Padding(
        padding: const EdgeInsets.only(right: 7, left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 242,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                    'assets/Mask Group (4).png',
                    fit: BoxFit.cover,
                    width: 160,
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Women Printed Kurta',
                  style: GoogleFonts.montserrat(
                    fontSize: 11,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Neque porro quisquam est qui\ndolorem ipsum quia',
                  style: GoogleFonts.montserrat(
                    fontSize: 8,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('₹1500',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w500,
                  ),),
                  Row(
                    children: [
                      Text('₹2499',
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.lineThrough,
                    fontSize: 12,
                    decorationColor: Color.fromRGBO(187, 187, 187, 1),
                    color: Color.fromRGBO(187, 187, 187, 1),
                    fontWeight: FontWeight.w300,
                  ),), 
                    Text('  40%Off',
                    style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Color.fromRGBO(254, 115, 92, 1),
                    fontWeight: FontWeight.w400,
                  ),)],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star_half_outlined,
                      size: 14,
                      color: Color.fromRGBO(187, 187, 187, 1),),
                      Text('56890',
                      style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Color.fromRGBO(164, 169, 179, 1),
                    fontWeight: FontWeight.w400,
                  ),)
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 242,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                    'assets/Mask Group (6).png',
                    width: 160,
                    //height: 124,
                   //fit: BoxFit.cover,
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Text('HRX by Hrithik Roshan',
                  style: GoogleFonts.montserrat(
                    fontSize: 11,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Neque porro quisquam est qui\ndolorem ipsum quia',
                  style: GoogleFonts.montserrat(
                    fontSize: 8,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('₹2499',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w500,
                  ),),
                  Row(
                    children: [
                      Text('₹4999',
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color.fromRGBO(187, 187, 187, 1),
                    fontSize: 12,
                    color: Color.fromRGBO(187, 187, 187, 1),
                    fontWeight: FontWeight.w300,
                  ),), 
                    Text('  40%Off',
                    style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Color.fromRGBO(254, 115, 92, 1),
                    fontWeight: FontWeight.w400,
                  ),)],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star,
                      size: 14,
                      color: Color.fromRGBO(237, 179, 16, 1),),
                      Icon(Icons.star_half_outlined,
                      size: 14,
                      color: Color.fromRGBO(187, 187, 187, 1),),
                      Text('344567',
                      style: GoogleFonts.montserrat(
                    fontSize: 10,
                    color: Color.fromRGBO(164, 169, 179, 1),
                    fontWeight: FontWeight.w400,
                  ),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
