// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/models/cart_item.dart';
import 'package:e_commerce_project/models/textt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  bool onFirstPage = false;
  bool onLastPage = false;
  bool onMiddlePage = false;
  final _viewController = PageController();
  String _selectedText = Textt[0].words;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Color.fromRGBO(253, 253, 253, 1),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 16, left: 7, top: 35, bottom: 10),
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
                  Image.asset('assets/Group 33782.png')
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Container(
                              height: 240,
                              width: double.maxFinite,
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                alignment: Alignment(0, 0.8),
                                height: 31,
                                width: double.maxFinite,
                                child: SmoothPageIndicator(
                                  controller: _viewController,
                                  count: 5,
                                  effect: WormEffect(
                                      dotHeight: 9,
                                      dotWidth: 9,
                                      dotColor:
                                          Color.fromRGBO(222, 219, 219, 1),
                                      activeDotColor:
                                          Color.fromRGBO(248, 55, 88, 1),
                                      spacing: 5),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Color.fromRGBO(253, 253, 253, 1),
                            height: 213,
                            width: double.maxFinite,
                            child: PageView(
                              onPageChanged: (index) {
                                setState(() {
                                  onFirstPage = (index == 0);
                                  onMiddlePage =
                                      (index == 1 && index == 2 && index == 3);
                                  onLastPage = (index == 4);
                                });
                              },
                              controller: _viewController,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      'assets/unsplash_NoVnXXmDNi0.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      'assets/unsplash_NoVnXXmDNi0.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      'assets/unsplash_NoVnXXmDNi0.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      'assets/unsplash_NoVnXXmDNi0.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      'assets/unsplash_NoVnXXmDNi0.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 213,
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                onFirstPage
                                    ? Container(
                                        height: 40,
                                        margin: EdgeInsets.only(left: 20),
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          //gradient: RadialGradient(colors: [
                                          // Color.fromRGBO(187, 187, 187, 1),
                                          //Color.fromRGBO(187, 187, 187, 0),
                                          // ]),
                                        ),
                                      )
                                    : onMiddlePage
                                        ? GestureDetector(
                                            onTap: () {
                                              _viewController.previousPage(
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.easeIn);
                                            },
                                            child: Container(
                                              height: 40,
                                              margin: EdgeInsets.only(left: 20),
                                              width: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                gradient:
                                                    RadialGradient(colors: [
                                                  Color.fromRGBO(
                                                      187, 187, 187, 1),
                                                  Color.fromRGBO(
                                                      187, 187, 187, 0),
                                                ]),
                                              ),
                                              child:
                                                  Icon(Icons.navigate_before),
                                            ),
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              _viewController.previousPage(
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.easeIn);
                                            },
                                            child: Container(
                                              height: 40,
                                              margin: EdgeInsets.only(left: 20),
                                              width: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                gradient:
                                                    RadialGradient(colors: [
                                                  Color.fromRGBO(
                                                      187, 187, 187, 1),
                                                  Color.fromRGBO(
                                                      187, 187, 187, 0),
                                                ]),
                                              ),
                                              child:
                                                  Icon(Icons.navigate_before),
                                            ),
                                          ),
                                onLastPage
                                    ? Container(
                                        height: 40,
                                        margin: EdgeInsets.only(right: 20),
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          //gradient: RadialGradient(colors: [
                                          // Color.fromRGBO(187, 187, 187, 1),
                                          //Color.fromRGBO(187, 187, 187, 0),
                                          // ]),
                                        ),
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          _viewController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.easeIn);
                                        },
                                        child: Container(
                                          height: 40,
                                          margin: EdgeInsets.only(right: 20),
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: RadialGradient(colors: [
                                              Color.fromRGBO(187, 187, 187, 1),
                                              Color.fromRGBO(187, 187, 187, 0),
                                            ]),
                                          ),
                                          child: Icon(Icons.navigate_next),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Size: $_selectedText',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: 32,
                          width: double.maxFinite,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: Textt.length,
                              itemBuilder: (context, index) {
                                //final texttt = Textt[index].words;
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedText = Textt[index].words;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      height: 32,
                                      width: 54,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: _selectedText ==
                                                  Textt[index].words
                                              ? Color.fromRGBO(250, 113, 137, 1)
                                              : Color.fromRGBO(
                                                  253, 253, 253, 1),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                250, 113, 137, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: SelectableText(
                                        onSelectionChanged: (selection, cause) {
                                          setState(() {
                                            _selectedText = selection
                                                .textInside(Textt[index].words);
                                          });
                                        },
                                        Textt[index].words,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: _selectedText ==
                                                  Textt[index].words
                                              ? Color.fromRGBO(255, 255, 255, 1)
                                              : Color.fromRGBO(
                                                  250, 113, 137, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NIke Sneakers',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              Text(
                                'Vision Alta Men\'s Shoes Size (All Colours)',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color.fromRGBO(237, 179, 16, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color.fromRGBO(237, 179, 16, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color.fromRGBO(237, 179, 16, 1),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Color.fromRGBO(237, 179, 16, 1),
                                  ),
                                  Icon(
                                    Icons.star_half_outlined,
                                    size: 14,
                                    color: Color.fromRGBO(187, 187, 187, 1),
                                  ),
                                  Text(
                                    '  56,890',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Color.fromRGBO(164, 169, 179, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '₹2999',
                                    style: GoogleFonts.montserrat(
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor:
                                          Color.fromRGBO(187, 187, 187, 1),
                                      fontSize: 14,
                                      color: Color.fromRGBO(187, 187, 187, 1),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    '  ₹1500',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '  50% Off',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Color.fromRGBO(254, 115, 92, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Product Details',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/Frame 33808.png'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('assets/Frame 33809.png'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('assets/Frame 33810.png'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/Group 33816.png'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Image.asset('assets/Group 33815.png')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(255, 204, 213, 1),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Delivery in',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(0, 0, 0, 1)),
                                    ),
                                    Text(
                                      '1 within Hour',
                                      style: GoogleFonts.poppins(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(1, 1, 1, 1)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 137,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            'assets/Component 1 (1).png'),
                                        Text(
                                          'View Similar',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  35, 35, 39, 1)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 157,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset('assets/Component 1.png'),
                                        Text(
                                          'Add to Compare',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  35, 35, 39, 1)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Similar to',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '282+ items',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 61,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.08),
                                                      blurRadius: 16,
                                                      offset: Offset(1, 1))
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Sort',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    1)),
                                                  ),
                                                  Icon(
                                                    Icons.swap_vert,
                                                    size: 18,
                                                    color: Color.fromRGBO(
                                                        35, 35, 39, 1),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                              width: 67,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.08),
                                                      blurRadius: 16,
                                                      offset: Offset(1, 1))
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Filter',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    1)),
                                                  ),
                                                  Icon(
                                                    Icons.filter_alt_outlined,
                                                    size: 18,
                                                    color: Color.fromRGBO(
                                                        35, 35, 39, 1),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ]),
                                ],
                              ),
                              Container(
                                width: double.maxFinite,
                                height: 530,
                                color: Color.fromRGBO(253, 253, 253, 1),
                                child: GridView.count(
                                  physics: NeverScrollableScrollPhysics(),
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 15,
                                  childAspectRatio: 0.7,
                                  children: List.generate(
                                    CartItem.length,
                                    (index) =>
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(6),
                                            bottomLeft: Radius.circular(6)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            height: 136,
                                            width: double.maxFinite,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                child: Image.asset(
                                                  CartItem[index].image,
                                                  fit: BoxFit.cover,
                                                 // width: 130,
                                                )),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              CartItem[index].title,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              CartItem[index].words,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 10,
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              CartItem[index].price,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color:
                                                      Color.fromRGBO(237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color:
                                                      Color.fromRGBO(237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color:
                                                      Color.fromRGBO(237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color:
                                                      Color.fromRGBO(237, 179, 16, 1),
                                                ),
                                                Icon(
                                                  Icons.star_half_outlined,
                                                  size: 14,
                                                  color: Color.fromRGBO(
                                                      187, 187, 187, 1),
                                                ),
                                                Text(
                                                  CartItem[index].crossed,
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                        164, 169, 179, 1),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                  
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ]
                            ),
                      )
                    ]),
              ),
            ),
          ])),
    );
  }
}
