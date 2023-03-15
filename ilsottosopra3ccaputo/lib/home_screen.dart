import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
       onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
      children: [
        Image.asset(
              'lib/assets/1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/4.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/assets/5.jpg',
              fit: BoxFit.cover,
            ),

      ],
    );
  }
}