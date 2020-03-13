import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';

Widget imagesCarousel=Container(
  width: double.infinity,
  height: 200.0,
  child: Carousel(
    images: [
      AssetImage('assets/images/covers/cv1.jpg'),
      AssetImage('assets/images/covers/cv2.jpg'),
      AssetImage('assets/images/covers/cv3.jpg'),
      AssetImage('assets/images/covers/cv4.jpg'),
      AssetImage('assets/images/covers/cv5.jpg'),
      AssetImage('assets/images/covers/cv6.jpg'),

    ],

    autoplay: true,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
    indicatorBgPadding: 0.0,
    dotSize: 0.0,
    dotBgColor: Colors.transparent,
  ),

);