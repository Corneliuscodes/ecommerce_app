// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Cart {
  String image;
  String words;
  String price;
  String crossed;
  String title;

  Cart({required this.image, required this.words, required this.crossed, required this.price, required this.title});
}

List<Cart> CartItem = [
   Cart(
    image: 'assets/unsplash_mHUk4Se7peY.png',
    title: 'Nike Sneakers',
    words: 'Nike Air Jordan Retro\n1 Low Mystic Black',
    price:'₹1900',
    crossed:'46,890',
  ),
   Cart(
    image: 'assets/unsplash_76w_eDO1u1E.png',
    title: 'Nike Sneakers',
    words: 'Mid Peach Mocha Shoes For \nMan White Black Pink S...',
    price:'₹1900',
    crossed:'2,568',
  ),
   Cart(
    image: 'assets/unsplash_mHUk4Se7peY.png',
    title: 'Nike Sneakers',
    words: 'Nike Air Jordan Retro\n1 Low Mystic Black',
    price:'₹1900',
    crossed:'46,890',
  ),
   Cart(
    image: 'assets/unsplash_76w_eDO1u1E.png',
    title: 'Nike Sneakers',
    words: 'Mid Peach Mocha Shoes For \nMan White Black Pink S...',
    price:'₹1900',
    crossed:'2,568',
  ),
   
];
