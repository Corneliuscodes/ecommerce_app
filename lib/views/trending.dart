// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/models/griddy.dart';
import 'package:e_commerce_project/views/place_order.dart';
import 'package:e_commerce_project/views/profile.dart';
import 'package:e_commerce_project/views/shipping.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  final TextEditingController _controller = TextEditingController();
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
        height: double.maxFinite,
        width: double.maxFinite,
        color: Color.fromRGBO(253, 253, 253, 1),
        child: Padding(
          padding: EdgeInsets.only(top: 0),
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
              Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                    height: 20,
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
                            '52,082+ Iteams ',
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
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.08),
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
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.08),
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
                  Container(
                    width: double.maxFinite,
                   height: 1350,
                    color: Color.fromRGBO(253, 253, 253, 1),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(15.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                       mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 250
                      ),
                      itemCount: Griddy.length,
                      itemBuilder: (BuildContext context, int index) =>

                          //Transform.translate(
                          // offset: Offset(
                          // 0,
                          //(index.isOdd) ? 30 : 0,
                          // ),
                          Container(
                        //height: (index.isOdd) ? 600 : 300,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(6),
                              bottomLeft: Radius.circular(6)),
                              ),
                  
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              height: 136,
                              width: double.maxFinite,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.asset(
                                    Griddy[index].image,
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
                                Griddy[index].title,
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
                                Griddy[index].words,
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
                                Griddy[index].price,
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
                                    Griddy[index].crossed,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Color.fromRGBO(164, 169, 179, 1),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
