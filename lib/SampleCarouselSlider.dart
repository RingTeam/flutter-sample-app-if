import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class SampleCarouselSlider extends StatefulWidget {
 

  SampleCarouselSlider();

  @override
  State<StatefulWidget> createState() => _SampleCarouselSlider();
}

class _SampleCarouselSlider extends State<SampleCarouselSlider> {
  List images= [
    "images/sample1.png",
    "images/sample2.png",
    "images/sample3.png",
  ];
  int index=0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('carousel_slider'),
      ),
      body: CarouselSlider(
  options: CarouselOptions(
    height: 600.0,
    initialPage: index,
    viewportFraction: 1,
    enableInfiniteScroll: true,
    reverse: false,
  ),
  items: images.map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Image.asset(i);
      },
    );
  }).toList(),
),
    );
  }
}
