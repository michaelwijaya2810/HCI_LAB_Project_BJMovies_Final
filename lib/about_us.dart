import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xffffffcc),
            //AppBar
            appBar: AppBar(
              backgroundColor: Color(0xffDBA13B),
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.pop(context)),
            ),

            //Content
            body: new Container(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Center(
                        child: Image(image: AssetImage('assets/logo2.jpeg')),
                      ),
                      RichText(
                          text: TextSpan(
                              text:
                                  "Welcome to BJMovies, where you can find a variety of movie selection from various genres. Here you can search information about upcoming movies, newly released movies, and the most popular movies right now. You can also drop a review on the movie you've watched before or recently. ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ))),
                      Text(" "),
                      RichText(
                          text: TextSpan(
                              text:
                                  "If you have any feedback or suggestion, please contact us through",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ))),
                      RichText(
                          text: TextSpan(
                              text: "bjmovies.business@gmail.com ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))),
                      Text(" "),
                      RichText(
                          text: TextSpan(
                              text: "Enjoy your stay in BJMovies ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ))),
                    ]))));
  }
}
