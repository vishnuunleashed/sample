import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  final List<String> imageList = [
    "assets/main_categories/banner/b2.png",
    "assets/main_categories/banner/b3.png",
    "assets/main_categories/banner/banner1.jpg",
    "assets/main_categories/banner/banner2.jpg",
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,

      child: Card(
        child: CarouselSlider(

          options: CarouselOptions(

            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
          ),
          items: imageList.map((e) => Card(
            color: Colors.white70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(

                children: <Widget>[
                  Image.asset(e,

                    fit: BoxFit.cover)

                ],
              ) ,
            ),
          )).toList(),
        ),
      ),
    );

  }
}
