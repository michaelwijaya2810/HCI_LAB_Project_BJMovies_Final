import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final String username;

  CustomDrawer({this.username});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff2F4858),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Welcome, ',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal),
                    ),
                    Padding(padding: EdgeInsets.only(top: 4.0)),
                    Text(
                      username,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
                ListTile(
                  title: Text(
                    'About Us',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/aboutUs');
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 188.0)),
                ListTile(
                  title: Text(
                    'Log Out',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24.0,
                        fontWeight: FontWeight.normal),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
