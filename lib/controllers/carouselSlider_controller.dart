import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderController extends StatelessWidget {
  // final List<String> imgList = [

  //   'https://cdn.pixabay',
  // ];

  CarouselSliderController({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ];

    return Center(
      child: CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index, realIndex) {
            final imgUrl = imgList[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                  width: 1000,
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            enableInfiniteScroll: true,
          )),
    );
  }
}
