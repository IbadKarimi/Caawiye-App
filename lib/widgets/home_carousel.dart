import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  final List images;
  HomeCarousel({required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
     width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 0.5,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black,
        //     blurRadius: 50,
        //     spreadRadius: -45,
        //   ),
        // ],
      ),
      child: AnotherCarousel(
        animationDuration: Duration(milliseconds: 800),
        images: images
            .map<CachedNetworkImageProvider>(
                (e) => CachedNetworkImageProvider(e))
            .toList(),
        // defaultImage: AssetImage(kLogo),
        boxFit: BoxFit.cover,
        borderRadius: true,
        // radius: Radius.circular(12),
        // dotSize:6.0,
        // dotSpacing: 15.0,
        // dotColor: Colors.grey,
        // indicatorBgPadding: 5.0,
        dotIncreasedColor: Theme.of(context).colorScheme.secondary,
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.bottomCenter,
        dotVerticalPadding: 10,
        dotHorizontalPadding: 10.0,
        autoplay: true,


      ),

    );
  }
}

