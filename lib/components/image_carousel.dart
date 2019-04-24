import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Image_Carousel extends StatefulWidget {
  @override
  _Image_CarouselState createState() => _Image_CarouselState();
}

class _Image_CarouselState extends State<Image_Carousel> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 180.0,
      child: new Carousel(
        boxFit: BoxFit.cover,// for feeling complete area of particlar height
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),

        ],
        autoplay: true, //image will not rotate automaticzlly if u wannna u cn change this
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 2.0,
        
      ),
    
  
      
    );return image_carousel;
  }
}