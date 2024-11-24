import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_slider_controller.dart';

class ImageDialog extends StatefulWidget {
  // final List<String> imagePaths;

  const ImageDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  int currentindex = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    //TODO Later adjust this to get the images from  the project
    final List<String> imgList = [
      // 'assets/images/platformer/main_menu.png',
      // 'assets/images/platformer/level_1.png',
      // 'assets/images/platformer/level_2.png',
      // 'assets/images/platformer/game_over.png',
      'assets/images/index.png',
    ];
    final screenWidth = MediaQuery.of(context).size.width;

    final bool isMobile = screenWidth < 700;

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
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 400,
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
          Positioned(
            top: 80,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 28),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          isMobile
              ? Container()

              // Empty container to dissable the arrow buttons
              : Positioned(
                  right: 10,
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
          isMobile
              ? Container() // Empty container to dissable the arrow buttons

              : Positioned(
                  left: 10,
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
