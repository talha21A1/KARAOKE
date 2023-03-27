import 'dart:io';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:karaoke/favourite.dart';
import 'package:karaoke/help.dart';
import 'package:karaoke/home.dart';
import 'package:karaoke/offline.dart';
import 'package:karaoke/recordss.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:karaoke/search.dart';

import 'package:karaoke/utilities/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _index = 0;

  List pages = [
    Home(),
    Search(),
    Favourites(),
    Records(),
    Offline(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating NavBar Example',
      home: Scaffold(
        key: _scaffoldKey,

        //If you want to show body behind the navbar, it should be true
        extendBody: true,
        body: Container(
          child: pages[_index],
        ),
        bottomNavigationBar: FloatingNavbar(
          selectedBackgroundColor: Colors.white,
          backgroundColor: Colors.grey[400],
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.search, title: 'Search'),
            FloatingNavbarItem(
                icon: Icons.favorite_rounded, title: 'Favourites'),
            FloatingNavbarItem(icon: Icons.record_voice_over, title: 'Records'),
            FloatingNavbarItem(icon: Icons.offline_bolt, title: 'Offline'),
          ],
        ),
      ),
    );
  }
}
