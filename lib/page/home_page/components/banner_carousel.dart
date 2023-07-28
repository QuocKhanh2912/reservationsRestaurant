import 'package:flutter/material.dart';

import '../../../components/indicator_carousel.dart';
import '../../utils/assest_management.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({Key? key}) : super(key: key);

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final _banners = [
    Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xFFE9B7B2),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManagement.bannerLogo),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: Image.asset(AssetsManagement.bannerMeal),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                child: Image.asset(
                    AssetsManagement.bannerFlashOffer),
              )),
        ]),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xFFE9B7B2),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManagement.bannerLogo),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: Image.asset(AssetsManagement.bannerMeal),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                child: Image.asset(
                    AssetsManagement.bannerFlashOffer),
              )),
        ]),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xFFE9B7B2),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManagement.bannerLogo),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: Image.asset(AssetsManagement.bannerMeal),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                child: Image.asset(
                    AssetsManagement.bannerFlashOffer),
              )),
        ]),
      ),
    ),

  ];

  int _curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: PageView(
              children: _banners,
              onPageChanged: (value) {
                setState(() {
                  _curIndex = value;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: IndicatorCarousel(
            curPageIndex: _curIndex,
            length: _banners.length,
          ),
        )
      ],
    );
  }
}
