import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Slider"),
      ),
      body: Container(
        child: CarouselSlider(
          items: [
            Image.asset('images/slider_image/slider_image (1).jpg', fit: BoxFit.fitHeight,),
            Image.asset('images/slider_image/slider_image (1).png', fit: BoxFit.fitHeight,),
            Image.asset('images/slider_image/slider_image (2).jpg', fit: BoxFit.fitHeight,),
            Image.asset('images/slider_image/slider_image (3).jpg', fit: BoxFit.fitHeight,),
          ],
          options: CarouselOptions(
            aspectRatio: 2.5,
            initialPage: 0,
            height: double.maxFinite,
            enlargeCenterPage: false,
            autoPlay: true,
            autoPlayCurve: Curves.easeInSine,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            viewportFraction: 0.99,
          ),
        ),
      ),
    );
  }
}
