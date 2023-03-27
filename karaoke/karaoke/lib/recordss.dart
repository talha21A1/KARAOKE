import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:karaoke/utilities/color.dart';
import 'package:karaoke/widget/drawer_widget.dart';
import 'package:karaoke/widget/list_widget.dart';
import 'package:lottie/lottie.dart';

class Records extends StatefulWidget {
  Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
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
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: tooglebutton1,
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              color:
                                  isbutton1clicked ? Colors.green : Colors.red,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "Audio",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: tooglebutton2,
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              color:
                                  isbutton2clicked ? Colors.green : Colors.red,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                            child: Text(
                              "Video",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 4,
                ),
                LottieBuilder.asset(
                  'asset/audio.json',
                  height: 150,
                ),
                const Center(
                  child: Text(
                    "Soory don't have any  Audio  records",
                    style: TextStyle(color: Col.color),
                  ),
                )
              ],
            )));
  }
}
