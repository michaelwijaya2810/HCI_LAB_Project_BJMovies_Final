import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> items;

  final CarouselController cc = CarouselController();

  CustomCarousel({this.items});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          carouselController: cc,
          options: CarouselOptions(
            height: 300.0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 500),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(i, fit: BoxFit.contain));
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 61,
              height: 139,
              color: Color(0xFF333333).withOpacity(0.4),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: Colors.white,
                ),
                onPressed: () => cc.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn),
              ),
            ),
            Container(
              width: 61,
              height: 139,
              color: Color(0xFF333333).withOpacity(0.4),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
                ),
                onPressed: () => cc.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn),
              ),
            )
          ],
        ),
      ],
    );
  }
}
