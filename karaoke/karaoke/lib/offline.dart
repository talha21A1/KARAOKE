import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:karaoke/utilities/color.dart';
import 'package:karaoke/widget/drawer_widget.dart';
import 'package:karaoke/widget/list_widget.dart';
import 'package:lottie/lottie.dart';

class Offline extends StatefulWidget {
  Offline({super.key});

  @override
  State<Offline> createState() => _OfflineState();
}

class _OfflineState extends State<Offline> {
  bool isbutton1clicked = false;
  bool isbutton2clicked = true;

  void tooglebutton1() {
    setState(() {
      isbutton1clicked = !isbutton1clicked;
    });
  }

  void tooglebutton2() {
    setState(() {
      isbutton2clicked = !isbutton2clicked;
    });
  }

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
            height: height,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue, Colors.purple])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  height: height * 0.1,
                  width: width * 0.8,
                  child: Center(
                    child: ListTile(
                      leading: LottieBuilder.asset(
                        'asset/selectaudio.json',
                        height: 150,
                      ),
                      title: Text(
                        "Select a Audio File",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                          "Pick a audio file from gallery and play offline"),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  height: height * 0.1,
                  width: width * 0.8,
                  child: Center(
                    child: ListTile(
                      leading: LottieBuilder.asset(
                        'asset/videoselect.json',
                        height: 150,
                      ),
                      title: Text(
                        "Select a video File",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                          "Pick a video file from gallery and play offline"),
                    ),
                  ),
                )
              ],
            )));
  }
}
