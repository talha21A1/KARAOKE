import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:karaoke/widget/drawer_widget.dart';
import 'package:karaoke/widget/list_widget.dart';
import 'package:lottie/lottie.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
     final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            title: Text("Explore your Karaoke"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            backgroundColor: Color.fromARGB(255, 160, 137, 144)),
        drawer: customDrawer(context),
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.purple])),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: 100,
                  child: Lottie.asset('asset/love.json',
                      height: 600, repeat: false)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Favorite Item",
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95.0),
              child: Divider(
                color: Colors.white,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Sorry don't have any favorute item",
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ],
        ),
      ),
    ));
  }
}
