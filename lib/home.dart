import 'package:bj_movies/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:bj_movies/body.dart';

class Home extends StatelessWidget {
  final String username;

  Home({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffcc),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xffDBA13B),
      ),
      drawer: CustomDrawer(
        username: username,
      ),
      body: Body(),
    );
  }
}
