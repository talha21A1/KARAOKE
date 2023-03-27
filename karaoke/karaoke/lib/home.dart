import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:karaoke/popmusic/hiphop.dart';
import 'package:karaoke/popmusic/pop_list.dart';
import 'package:karaoke/utilities/color.dart';
import 'package:karaoke/widget/card_widget.dart';
import 'package:karaoke/widget/circle_widget.dart';
import 'package:karaoke/popmusic/list_widget_popular.dart';
import 'package:karaoke/widget/drawer_widget.dart';
import 'package:karaoke/widget/help.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => HomeMain())));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 42.0),
                                    // child: Text(
                                    //   "Popular Songs",
                                    //   style: TextStyle(color: Col.color),
                                    // ),
                                  )
                                ],
                              ),
                              Flexible(
                                child: SizedBox(
                                  height: height * 0.01,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Text(
                                  //   "1.5M+ Song",
                                  //   style: TextStyle(color: Col.color),
                                  // )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('asset/justin.png')),
                            borderRadius: BorderRadius.circular(18)),
                        height: height * 0.2,
                        width: width * 0.9,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.mic),
                      Text(
                        " Genres",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                      height: height * 0.17,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MyWidget(
                              ontapp: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => PopSongs())));
                              },
                              width: width * 0.3,
                              img: 'asset/guitar.png',
                              title: 'Pop'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => HipHop())));
                              },
                              width: width * 0.3,
                              img: 'asset/hiphop.png',
                              title: 'HipHop'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {},
                              width: width * 0.3,
                              img: 'asset/rock.png',
                              title: 'Rock'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {},
                              width: width * 0.3,
                              img: 'asset/folk.png',
                              title: 'Folk'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {},
                              width: width * 0.3,
                              img: 'asset/classic.png',
                              title: 'Classic'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {},
                              width: width * 0.3,
                              img: 'asset/jazz.png',
                              title: 'Jazz'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {},
                              width: width * 0.3,
                              img: 'asset/country.png',
                              title: 'Country'),
                          SizedBox(width: width * 0.02),
                          MyWidget(
                              ontapp: () {},
                              width: width * 0.3,
                              img: 'asset/disco.png',
                              title: 'Disco')
                        ],
                      )),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.mic),
                      Text(
                        "Top Singers",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Circle(
                          asset: 'asset/rihannacircle.png',
                          ontapp: () {},
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Circle(
                          asset: 'asset/justin.jpeg',
                          ontapp: () {},
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Circle(
                          asset: 'asset/taylorw.jpg',
                          ontapp: () {},
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Circle(
                          asset: 'asset/coldplay.jpg',
                          ontapp: () {},
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Circle(
                          asset: 'asset/eminem.jpg',
                          ontapp: () {},
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Circle(
                          asset: 'asset/ariana.png',
                          ontapp: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => HomeMain())));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SizedBox(
                                  height: height * 0.1,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Taylor Top Songs",
                                    style: TextStyle(
                                        color: Col.color,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('asset/taylor.png')),
                            borderRadius: BorderRadius.circular(18)),
                        height: height * 0.2,
                        width: width * 0.9,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: ((context) => HomeMain())));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SizedBox(
                                  height: height * 0.1,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rihanna Top Songs",
                                    style: TextStyle(
                                        color: Col.color,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('asset/rihanna.png')),
                            borderRadius: BorderRadius.circular(18)),
                        height: height * 0.2,
                        width: width * 0.9,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: ((context) => HomeMain())));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SizedBox(
                                  height: height * 0.1,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "ColdPlay Top Songs",
                                    style: TextStyle(
                                        color: Col.color,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('asset/coldplaybanner.jpg')),
                            borderRadius: BorderRadius.circular(18)),
                        height: height * 0.2,
                        width: width * 0.9,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: ((context) => HomeMain())));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SizedBox(
                                  height: height * 0.1,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ariana top Songs",
                                    style: TextStyle(
                                        color: Col.color,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('asset/arianabanner.jpg')),
                            borderRadius: BorderRadius.circular(18)),
                        height: height * 0.2,
                        width: width * 0.9,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ));
  }
}
