import 'package:bj_movies/movie_detail.dart';
import 'package:flutter/material.dart';

class MovieButton extends StatelessWidget {
  final String imageLoc;
  final String movieTitle;
  final String movieCat;
  final String synopsis;

  MovieButton({this.imageLoc, this.movieTitle, this.movieCat, this.synopsis});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              width: 148,
              height: 220,
              child: Image.asset(imageLoc),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text(
              movieTitle,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text(
              movieCat,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        width: 148,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Movie(
                    imageLoc: imageLoc,
                    movieTitle: movieTitle,
                    movieCat: movieCat,
                    synopsis: synopsis,
                  )),
        );
      },
    );
  }
}
