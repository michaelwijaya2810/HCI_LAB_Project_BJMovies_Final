import 'package:flutter/material.dart';
import 'package:bj_movies/body_detail.dart';

class Movie extends StatelessWidget {
  final String imageLoc;
  final String movieTitle;
  final String movieCat;
  final String synopsis;

  Movie({this.imageLoc, this.movieTitle, this.movieCat, this.synopsis});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Color(0xffDBA13B)),
      body: BodyDetail(
        imageLoc: imageLoc,
        movieTitle: movieTitle,
        movieCat: movieCat,
        synopsis: synopsis,
      ),
      backgroundColor: Color(0xffffffcc),
    );
  }
}
