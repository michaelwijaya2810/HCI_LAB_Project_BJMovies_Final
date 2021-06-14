import 'package:flutter/material.dart';
import 'package:bj_movies/pallete.dart';

class BodyDetail extends StatelessWidget {
  final String imageLoc;
  final String movieTitle;
  final String movieCat;
  final String synopsis;

  BodyDetail({this.imageLoc, this.movieTitle, this.movieCat, this.synopsis});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: 400,
            height: 441,
            child: Image.asset(
              imageLoc,
              fit: BoxFit.fill,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 22)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieTitle,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  movieCat,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Padding(padding: EdgeInsets.only(top: 66)),
                Text(
                  'Synopsis',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(top: 4)),
                Text(
                  synopsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: "Write your review about this movie here...",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please fill in your review to submit it!';
                      } else if ((value.length > 1000)) {
                        return 'Review must be below 1000 characters!';
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70),
                    child: Container(
                      color: Color(0xff2F4858),
                      width: 400,
                      height: 50,
                      child: FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Submit",
                          style:
                              kBodyText2.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
