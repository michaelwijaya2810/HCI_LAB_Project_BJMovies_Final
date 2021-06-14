import 'package:bj_movies/movie_detail.dart';
import 'package:flutter/material.dart';
import 'package:bj_movies/home.dart';
import 'package:bj_movies/login_screen.dart';
import 'package:bj_movies/about_us.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginScreen(),
        '/home': (BuildContext context) => Home(),
        '/aboutUs': (BuildContext context) => AboutUs(),
        '/movieDetail': (BuildContext context) => Movie(),
      },
    );
  }
}
