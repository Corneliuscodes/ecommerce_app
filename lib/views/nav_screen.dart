// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/views/forgot_password.dart';
import 'package:e_commerce_project/views/home_page.dart';
import 'package:e_commerce_project/views/shop_page.dart';
import 'package:e_commerce_project/views/trending.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({ Key? key }) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
 final _controller = PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
 return PersistentTabView(
      context, 
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      controller: _controller,
      padding: EdgeInsets.symmetric(vertical: 7),
      //navBarHeight: 50,
      screens: [
        HomePage(),
        Trending(),
        ShopPage(),
        HomePage(),
        HomePage(),
      ],
      items: [
        PersistentBottomNavBarItem(
          activeColorPrimary: Color.fromRGBO(235, 48, 48, 1),
          inactiveColorPrimary: Color.fromRGBO(0, 0, 0, 1),
          icon: Icon(Icons.home),
          title: 'Home',
          textStyle: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            //color: Color.fromRGBO(235, 48, 48, 1)
          )
          ),
        PersistentBottomNavBarItem(
          activeColorPrimary: Color.fromRGBO(235, 48, 48, 1),
          inactiveColorPrimary: Color.fromRGBO(0, 0, 0, 1),
          icon: Icon(Icons.favorite_outline),
          title: 'Wishlist',
          textStyle: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            //color: Color.fromRGBO(235, 48, 48, 1)
          )
          ),
        PersistentBottomNavBarItem(
          activeColorPrimary: Color.fromRGBO(235, 48, 48, 1),
          inactiveColorPrimary: Color.fromRGBO(233, 233, 233, 1),
          activeColorSecondary: Color.fromRGBO(235, 48, 48, 1),
          inactiveColorSecondary: Color.fromRGBO(233, 233, 233, 1),
          inactiveIcon: Icon(Icons.shopping_cart_outlined, color:Color.fromRGBO(0, 0, 0, 1),),
          icon: Icon(Icons.shopping_cart_outlined,
          color: Color.fromRGBO(233, 233, 233, 1)
          ),
          ),
        PersistentBottomNavBarItem(
          activeColorPrimary: Color.fromRGBO(235, 48, 48, 1),
          inactiveColorPrimary: Color.fromRGBO(0, 0, 0, 1),
          icon: Icon(Icons.search),
          title: 'Search',
          textStyle: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            //color: Color.fromRGBO(235, 48, 48, 1)
          )
          ),
        PersistentBottomNavBarItem(
          activeColorPrimary: Color.fromRGBO(235, 48, 48, 1),
          inactiveColorPrimary: Color.fromRGBO(0, 0, 0, 1),
          icon: Icon(Icons.settings),
          title: 'Settings',
          textStyle: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            //color: Color.fromRGBO(235, 48, 48, 1)
          )
          )
      ],
      navBarStyle: NavBarStyle.style15,
      );    
  }
}