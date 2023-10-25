import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  const HorizontalCard({super.key});

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  final List<String> imageAssetPaths = [
    "assets/image/macDcard.png",
    "assets/image/macDcard.png",
    "assets/image/macDcard.png",
    "assets/image/macDcard.png",
    "assets/image/macDcard.png",
    "assets/image/macDcard.png",
    "assets/image/macDcard.png",
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            // carouselController: _carouselController,

            itemCount: imageAssetPaths.length,
            itemBuilder: (context, index, index2) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              // spreadRadius: 1.0,
                              offset: Offset(2.0, 2.0))
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(imageAssetPaths[index]),
                            fit: BoxFit.fill)),
                  ));
            },
            options: CarouselOptions(
              height: 180,
              initialPage: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              },
              autoPlay: true,
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            imageAssetPaths.length,
            (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
