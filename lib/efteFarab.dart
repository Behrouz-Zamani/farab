// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';




void main() {
  runApp(const efteFarab());
}

class efteFarab extends StatefulWidget {
  const efteFarab({super.key});

  @override
  State<efteFarab> createState() => _efteFarab();
}

class _efteFarab extends State<efteFarab> {

  int activeIndex=0;
  final controller=CarouselController();
  
final urlImages = [
    'https://app.farab-co.ir/efte/01.jpg',
    'https://app.farab-co.ir/efte/02.jpg',
    'https://app.farab-co.ir/efte/03.jpg',
    'https://app.farab-co.ir/efte/04.jpg',
    'https://app.farab-co.ir/efte/05.jpg',
    'https://app.farab-co.ir/efte/06.jpg',
    'https://app.farab-co.ir/efte/07.jpg',
    'https://app.farab-co.ir/efte/08.jpg',
    'https://app.farab-co.ir/efte/09.jpg',
    'https://app.farab-co.ir/efte/10.jpg',
    'https://app.farab-co.ir/efte/11.jpg',
    'https://app.farab-co.ir/efte/12.jpg',
    'https://app.farab-co.ir/efte/13.jpg',
    'https://app.farab-co.ir/efte/14.jpg',
    'https://app.farab-co.ir/efte/15.jpg',
    'https://app.farab-co.ir/efte/16.jpg',
    'https://app.farab-co.ir/efte/17.jpg',
    'https://app.farab-co.ir/efte/18.jpg',
    'https://app.farab-co.ir/efte/19.jpg',
    'https://app.farab-co.ir/efte/20.jpg',
    'https://app.farab-co.ir/efte/21.jpg',
    'https://app.farab-co.ir/efte/22.jpg',
    'https://app.farab-co.ir/efte/23.jpg',
    'https://app.farab-co.ir/efte/24.jpg',
    'https://app.farab-co.ir/efte/25.jpg',
    'https://app.farab-co.ir/efte/25.jpg',
    'https://app.farab-co.ir/efte/26.jpg',
    'https://app.farab-co.ir/efte/27.jpg',
    'https://app.farab-co.ir/efte/28.jpg',
    'https://app.farab-co.ir/efte/29.jpg',
  ];
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 198, 186, 245),
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
                    enableInfiniteScroll: false,
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
  

    

