import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageDialog extends StatefulWidget {
  const ImageDialog({Key? key}) : super(key: key);

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  int currentindex = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final bool isMobile = screenWidth < 700;

    final List<String> imgList = [
      'assets/images/dinner/login.jpg',
      'assets/images/dinner/homepage.jpg',
      'assets/images/dinner/homepage0.jpg',
      'assets/images/dinner/choose.jpg',
      'assets/images/dinner/choose-0.jpg',
      'assets/images/dinner/list.jpg',
      'assets/images/dinner/list-0.jpg',
      'assets/images/dinner/list-1.jpg',
      'assets/images/dinner/homepage.jpg',
    ];

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
              carouselController: carouselController,
              itemCount: imgList.length,
              itemBuilder: (context, index, realIndex) {
                final imgUrl = imgList[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imgUrl,
                      fit: isMobile ? BoxFit.cover : BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: isMobile ? screenHeight * 0.7 : 400,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentindex = index;
                  });
                },
              )),

          // Close Button - Positioned more responsively
          isMobile
              ? Positioned(
                  top: isMobile ? 50 : null,
                  right: isMobile ? 0 : null,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white, size: isMobile ? 24 : 28),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              : Container(),

          // Forward Navigation Button
          isMobile
              ? Container()
              : Positioned(
                  right: 10,
                  top: screenHeight * 0.4,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 36),
                    onPressed: () {
                      carouselController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                  ),
                ),

          // Back Navigation Button
          isMobile
              ? Container()
              : Positioned(
                  left: 10,
                  top: screenHeight * 0.4,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 36),
                    onPressed: () {
                      carouselController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
