// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:e_commerce_project/models/collections.dart';
import 'package:e_commerce_project/models/product_data.dart';
import 'package:e_commerce_project/views/cont.dart';
import 'package:e_commerce_project/views/mask_widget.dart';
import 'package:e_commerce_project/views/place_order.dart';
import 'package:e_commerce_project/views/profile.dart';
import 'package:e_commerce_project/views/shipping.dart';
import 'package:e_commerce_project/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final _viewController = PageController();
  final _pageController = PageController();
  final _listtController = ScrollController();
  bool onFirstPage = false;
  bool onLastPage = false;
  bool onMiddlePage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 253, 253, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 253, 253, 1),
        centerTitle: true,
        title: Image.asset('assets/logoipsum-255 1 (1).png'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset('assets/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Matthew'),
              accountEmail: Text('damilare@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('MO'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              trailing: Icon(Icons.more_vert),
              title: Text('Profile'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Profile();
                  },
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              trailing: Icon(Icons.more_vert),
              title: Text('Cart'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PlaceOrder();
                  },
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              trailing: Icon(Icons.more_vert),
              title: Text('Payment'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Shipping();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(253, 253, 253, 1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Group 33678.png'),
                    Image.asset('assets/logoipsum-255 1 (1).png'),
                    Image.asset('assets/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png')
                  ],
                ),
              ),*/
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(0, 0, 0, 0.04),
                          blurRadius: 9,
                          offset: Offset(0, 2))
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: 'Search any Product',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Color.fromRGBO(187, 187, 187, 1),
                        ),
                        suffixIcon: Icon(
                          Icons.mic,
                          size: 24,
                          color: Color.fromRGBO(187, 187, 187, 1),
                        ),
                        hintStyle: GoogleFonts.montserrat(
                          color: Color.fromRGBO(187, 187, 187, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Featured',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 61,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromRGBO(
                                        0, 0, 0, 0.08),
                                    blurRadius: 16,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Sort',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Icon(
                                  Icons.swap_vert,
                                  size: 18,
                                  color: Color.fromRGBO(35, 35, 39, 1),
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
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromRGBO(
                                        0, 0, 0, 0.08),
                                    blurRadius: 16,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Filter',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Icon(
                                  Icons.filter_alt_outlined,
                                  size: 18,
                                  color: Color.fromRGBO(35, 35, 39, 1),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 87,
                margin: EdgeInsets.only(left: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(productData[index].image),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            productData[index].words,
                            style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(33, 0, 61, 1)),
                          )
                        ],
                      ),
                    );
                  },
                ),
                //
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Container(
                      height: 220,
                      width: double.maxFinite,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        alignment: Alignment(0, 0.8),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        height: 31,
                        width: double.maxFinite,
                        child: SmoothPageIndicator(
                          controller: _viewController,
                          count: 3,
                          effect: WormEffect(
                              dotHeight: 9,
                              dotWidth: 9,
                              dotColor: Color.fromRGBO(222, 219, 219, 1),
                              activeDotColor:
                                  Color.fromRGBO(255, 163, 179, 1),
                              spacing: 5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(253, 253, 253, 1),
                    height: 189,
                    width: double.maxFinite,
                    child: PageView(
                      controller: _viewController,
                      children: [
                        Cont(),
                        Cont(),
                        Cont(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: AnimatedContainer(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(67, 146, 249, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deal of the Day',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Color.fromRGBO(255, 255, 255, 1))),
                          SizedBox(
                            height: 2.5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_alarms,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                size: 13,
                              ),
                              Text(' 22h 55m 20s remaining',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1)))
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: Profile(),
                            withNavBar:
                                false, // OPTIONAL VALUE. True by default.
                            //pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 28,
                          alignment: Alignment.center,
                          width: 89,
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          curve: Curves.easeOut,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color:
                                      Color.fromRGBO(255, 255, 255, 1))),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'View all',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                size: 13,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 242,
                    width: double.maxFinite,
                    // padding: EdgeInsets.only(right: 10),
                    child: PageView(
                      onPageChanged: (index) {
                        setState(() {
                          onFirstPage = (index == 0);
                          onMiddlePage = (index == 1);
                          onLastPage = (index == 2);
                        });
                      },
                      controller: _pageController,
                      children: [
                        MaskWidget(),
                        MaskWidget(),
                        MaskWidget(),
                      ],
                    ),
                  ),
                  Container(
                    height: 242,
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        onFirstPage
                            ? Container(
                                height: 40,
                                margin: EdgeInsets.only(left: 15),
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
                                      _pageController.previousPage(
                                          duration:
                                              Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    child: Container(
                                      height: 40,
                                      margin: EdgeInsets.only(left: 15),
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: RadialGradient(colors: [
                                          Color.fromRGBO(
                                              187, 187, 187, 1),
                                          Color.fromRGBO(
                                              187, 187, 187, 0),
                                        ]),
                                      ),
                                      child: Icon(Icons.navigate_before),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      _pageController.previousPage(
                                          duration:
                                              Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    child: Container(
                                      height: 40,
                                      margin: EdgeInsets.only(left: 15),
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: RadialGradient(colors: [
                                          Color.fromRGBO(
                                              187, 187, 187, 1),
                                          Color.fromRGBO(
                                              187, 187, 187, 0),
                                        ]),
                                      ),
                                      child: Icon(Icons.navigate_before),
                                    ),
                                  ),
                        onLastPage
                            ? Container(
                                height: 40,
                                margin: EdgeInsets.only(right: 15),
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
                                  _pageController.nextPage(
                                      duration:
                                          Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                },
                                child: Container(
                                  height: 40,
                                  margin: EdgeInsets.only(right: 15),
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
                height: 20,
              ),
              Container(
                height: 84,
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/Rectangle 56.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Special Offers',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset('assets/😱 (1).png')
                          ],
                        ),
                        Text(
                          'We make sure you get the\noffer you need at best prices',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    height: 171,
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  Container(
                    height: 171,
                    width: 11,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Color.fromRGBO(239, 173, 24, 1),
                      Color.fromRGBO(248, 215, 180, 1),
                    ])),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 24,
                      left: 24,
                      top: 8,
                    ),
                    height: 155,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(231, 231, 235, 0.3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/Group 33732.png'),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 3.0, top: 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 15.0,
                                  ),
                                  child: Text(
                                    'Flat and Heels',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(
                                            35, 35, 39, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Stand a chance to get rewarded',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(
                                            35, 35, 39, 1)),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () {},
                                    child: AnimatedContainer(
                                      duration:
                                          Duration(milliseconds: 300),
                                      height: 24,
                                      alignment: Alignment.center,
                                      width: 92,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4),
                                      curve: Curves.easeOut,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Color.fromRGBO(
                                              248, 55, 48, 1)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Visit now',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                fontWeight:
                                                    FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1)),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            size: 13,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, left: 40),
                    child: Image.asset('assets/Rectangle 55.png'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: AnimatedContainer(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(253, 110, 135, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Trending Products',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Color.fromRGBO(255, 255, 255, 1))),
                          SizedBox(
                            height: 2.5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                size: 13,
                              ),
                              Text(' Last Date 29/02/22',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(
                                          255, 255, 255, 1)))
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 28,
                          alignment: Alignment.center,
                          width: 89,
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          curve: Curves.easeOut,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color:
                                      Color.fromRGBO(255, 255, 255, 1))),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'View all',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        Color.fromRGBO(255, 255, 255, 1)),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                size: 13,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 225,
                    child: ListView.builder(
                        controller: _listtController,
                        scrollDirection: Axis.horizontal,
                        itemCount: collections.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16),
                            child: Container(
                              height: 225,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(6),
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4)),
                              ),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(4),
                                      child: Image.asset(
                                        collections[index].image,
                                        fit: BoxFit.cover,
                                        width: 160,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, right: 15),
                                    child: Text(
                                      collections[index].words,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 4,
                                    ),
                                    child: Text(
                                      collections[index].price,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          collections[index].crossed,
                                          style: GoogleFonts.montserrat(
                                            decoration: TextDecoration
                                                .lineThrough,
                                            fontSize: 12,
                                            decorationColor:
                                                Color.fromRGBO(
                                                    187, 187, 187, 1),
                                            color: Color.fromRGBO(
                                                187, 187, 187, 1),
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          collections[index].percent,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                254, 115, 92, 1),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 225,
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        _listtController.animateTo(
                          _listtController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.only(right: 15),
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
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 270,
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          child: Image.asset(
                            'assets/Mask Group (10).png',
                            fit: BoxFit.cover,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8),
                      child: Text(
                        'New Arrivals',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Summer\' 25 Collections',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 28,
                              alignment: Alignment.center,
                              width: 89,
                              padding:
                                  EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromRGBO(248, 55, 88, 1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'View all',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color:
                                        Color.fromRGBO(255, 255, 255, 1),
                                    size: 13,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 374,
                margin: EdgeInsets.only(left: 16),
                padding: EdgeInsets.symmetric(vertical: 5),
                width: double.maxFinite,
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sponsored',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Container(
                          width: double.maxFinite,
                          height: 292,
                          child: Image.asset(
                            'assets/Mask Group (11).png',
                            fit: BoxFit.cover,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'up to 50% Off',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 16,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
