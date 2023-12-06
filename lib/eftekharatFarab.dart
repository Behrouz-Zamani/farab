
// ignore_for_file: camel_case_types

import 'package:farab/about_Farab.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


void main() {
  runApp(const eftekharatFarab());
}

class eftekharatFarab extends StatefulWidget {
  const eftekharatFarab({super.key});

  @override
  State<eftekharatFarab> createState() => _eftekharatFarabState();
}

class _eftekharatFarabState extends State<eftekharatFarab> {

  int activeIndex=0;
  final controller=CarouselController();
  final urlImages = [
    'https://www.farab-co.ir/govahi/01.jpg',
    'https://www.farab-co.ir/govahi/02.jpg',
    'https://www.farab-co.ir/govahi/03.jpg',
    'https://www.farab-co.ir/govahi/04.jpg',
    'https://www.farab-co.ir/govahi/05.jpg',
    'https://www.farab-co.ir/govahi/06.jpg',
    'https://www.farab-co.ir/govahi/07.jpg',
    'https://www.farab-co.ir/govahi/08.jpg',
    'https://www.farab-co.ir/govahi/09.jpg',
    'https://www.farab-co.ir/govahi/10.jpg',
    'https://www.farab-co.ir/govahi/11.jpg',
    'https://www.farab-co.ir/govahi/12.jpg',
    'https://www.farab-co.ir/govahi/13.jpg',
    'https://www.farab-co.ir/govahi/14.jpg',
    'https://www.farab-co.ir/govahi/15.jpg',
    'https://www.farab-co.ir/govahi/16.jpg',
    'https://www.farab-co.ir/govahi/17.jpg',
    'https://www.farab-co.ir/govahi/18.jpg',
    'https://www.farab-co.ir/govahi/19.jpg',
    'https://www.farab-co.ir/govahi/20.jpg',
    'https://www.farab-co.ir/govahi/21.jpg',
    'https://www.farab-co.ir/govahi/22.jpg',
    'https://www.farab-co.ir/govahi/23.jpg',
    'https://www.farab-co.ir/govahi/24.jpg',
    'https://www.farab-co.ir/govahi/25.jpg',
    'https://www.farab-co.ir/govahi/25.jpg',
    'https://www.farab-co.ir/govahi/26.jpg',
    'https://www.farab-co.ir/govahi/27.jpg',
    'https://www.farab-co.ir/govahi/28.jpg',
    'https://www.farab-co.ir/govahi/29.jpg',
    'https://www.farab-co.ir/govahi/30.jpg',
    'https://www.farab-co.ir/govahi/31.jpg',
    'https://www.farab-co.ir/govahi/32.jpg',

  ];
 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 198, 186, 245),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    height: 550,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            const SizedBox(height: 12),
           // buildIndicator()
          ],
        ),
  ));
}


Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(dotWidth: 15, activeDotColor: Color.fromARGB(255, 12, 42, 66)),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) =>
    Image.network(urlImage, fit: BoxFit.cover);



  // int activeIndex=0;
  

    

