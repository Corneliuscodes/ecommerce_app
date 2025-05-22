// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Collection {
  String image;
  String words;
  String price;
  String crossed;
  String percent;

  Collection({required this.image, required this.words, required this.crossed, required this.percent, required this.price});
}

List<Collection> collections = [
   Collection(
    image: 'assets/Mask Group (8).png',
    words: 'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
    price:'₹650',
    crossed:'₹1599',
    percent:'60% off'
  ),
   Collection(
    image: 'assets/Mask Group (9).png',
    words: 'Labbin White Sneakers For Men and Female',
    price:'₹650',
    crossed:'₹1250',
    percent:'70% off'
  ),
   Collection(
    image: 'assets/Mask Group (8).png',
    words: 'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
    price:'₹650',
    crossed:'₹1599',
    percent:'60% off'
  ),
   Collection(
    image: 'assets/Mask Group (9).png',
    words: 'Labbin White Sneakers For Men and Female',
    price:'₹650',
    crossed:'₹1250',
    percent:'70% off'
  ),
];
