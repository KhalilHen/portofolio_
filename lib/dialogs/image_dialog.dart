import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as custom;

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('/images/sensei-sushi.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Close Icon in top-right corner
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 28),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Favorite Icon at the bottom-right
          Positioned(
            bottom: 16,
            right: 16,
            child: IconButton(
              icon: const Icon(Icons.favorite, color: Colors.red, size: 28),
              onPressed: () {
                // Add your favorite action here
              },
            ),
          ),
          // Next Icon positioned to the right for slide action
          Positioned(
            right: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 36),
              onPressed: () {
                // Add your next slide action here

                custom.CarouselSliderController();
              },
            ),
          ),
          // Optional: Previous Icon to the left for a full gallery experience
          Positioned(
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 36),
              onPressed: () {
                // Add your previous slide action here
              },
            ),
          ),
        ],
      ),
    );
  }
}
