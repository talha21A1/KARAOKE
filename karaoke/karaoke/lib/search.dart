import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:karaoke/widget/drawer_widget.dart';
import 'package:karaoke/widget/list_widget.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 21.0, vertical: 19),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19)),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                      prefixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search))),
                )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: height * 0.8,
              child: ListView(
                children: [
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/RgKAFK5djSk",
                    text: "Wiz Khalifa - See You Again ft. Charlie Puth",
                    subtext: "Wiz Khalifa",
                    appbartext: 'Wiz Khalifa - See You Again',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/fRh_vgS2dFE",
                    text: "Justin Bieber - Sorry ",
                    subtext: "Justin Bieber",
                    appbartext: 'Justin Bieber - Sorry ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/k9uoAokMW2Y",
                    text: "Mark Ronson - Uptown Funk ft. Bruno Mars",
                    subtext: "Mark Ronson ",
                    appbartext: 'Mark Ronson - Uptown Funk ft. Bruno Mars',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/e-ORhEE9VVg",
                    text: "Taylor Swift - Blank Space",
                    subtext: "Taylor Swift",
                    appbartext: 'Taylor Swift - Blank Space',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/-GDW3g2OsYI",
                    text: "Taylor Swift - Shake It Off",
                    subtext: "Taylor Swift",
                    appbartext: 'Taylor Swift - Shake It Off',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/pw6r-izZArA",
                    text: "“Lean On” by Major Lazer & Dj Shake ft. Mo",
                    subtext: "Major Lazer Official",
                    appbartext: '“Lean On by Major Lazer ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/YQHsXMglC9A",
                    text: "Adele - Hello ",
                    subtext: "Adele",
                    appbartext: 'Adele - Hello ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/CevxZvSJLk8",
                    text: "Katy Perry - Roar",
                    subtext: "Katy Perry",
                    appbartext: 'Katy Perry - Roar',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/pUtEBU4dqAQ",
                    text: "Sugar by Maroon 5",
                    subtext: "Maroon 5",
                    appbartext: 'Sugar by Maroon 5',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/1d_TJBInNDQ",
                    text: "All About That Bass by Meghan Trainor",
                    subtext: "Meghan Trainor",
                    appbartext: 'All About That Bass',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/4m1EFMoRFvY",
                    text: "Beyoncé - Single Ladies (Put a Ring on It)",
                    subtext: "Beyonce",
                    appbartext: 'Beyoncé - Single Ladies',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/CvBfHwUxHIk",
                    text: "Rihanna - Umbrella ",
                    subtext: "Rihanna",
                    appbartext: 'Rihanna - Umbrella',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/nfWlot6h_JM",
                    text: " Shake it Off by Taylor Swift",
                    subtext: "Taylor Swift ",
                    appbartext: 'Shake it Off',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/LOZuxwVk7TU",
                    text: " Toxic by Britney Spears",
                    subtext: "Britney Spears",
                    appbartext: ' Toxic by Britney Spears',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/rYEDA3JcQqw",
                    text: "Rolling in the Deep by Adele",
                    subtext: "Adele",
                    appbartext: 'Rolling in the Deep',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/pw6r-izZArA",
                    text: "“Lean On” by Major Lazer & Dj Shake ft. Mo",
                    subtext: "Major Lazer Official",
                    appbartext: '“Lean On by Major Lazer ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/QGJuMBdaqIw",
                    text: "Katy Perry - Firework",
                    subtext: "Katy Pere",
                    appbartext: 'Katy Perry - Firework',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/CevxZvSJLk8",
                    text: "Katy Perry - Roar",
                    subtext: "Katy Perry",
                    appbartext: 'Katy Perry - Roar',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/pUtEBU4dqAQ",
                    text: "Sugar by Maroon 5",
                    subtext: "Maroon 5",
                    appbartext: 'Sugar by Maroon 5',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/1d_TJBInNDQ",
                    text: "All About That Bass by Meghan Trainor",
                    subtext: "Meghan Trainor",
                    appbartext: 'All About That Bass',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/KUmZp8pR1uc",
                    text: "Amy Winehouse - Rehab",
                    subtext: "Amy WineHouse",
                    appbartext: 'Amy Winehouse - Rehab',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/4NRXx6U8ABQ",
                    text: "The Weeknd - Blinding Lights",
                    subtext: "The Weeknd",
                    appbartext: 'The Weeknd - Blinding Lights',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/CcNo07Xp8aQ",
                    text: "Robyn - Dancing On My Own ",
                    subtext: "Robyn",
                    appbartext: 'Robyn - Dancing On My Own ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/r7qovpFAGrQ",
                    text: "Lil Nas X - Old Town Road ",
                    subtext: "Lil Nas X",
                    appbartext: 'Lil Nas X - Old Town Road ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/1d_TJBInNDQ",
                    text: "PinkPantheress, Ice Spice - Boys a liar ",
                    subtext: "PinkPantheress",
                    appbartext: 'PinkPantheress, Ice Spice - Boys a liar ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/90RLzVUuXe4",
                    text: "David Guetta & Bebe Rexha - I'm Good ",
                    subtext: "David Guetta",
                    appbartext: 'David Guetta & Bebe Rexha - Im Good ',
                  ),
                  ListWidget(
                    height: height * 0.1,
                    width: width,
                    url: "https://youtu.be/G7KNmW9a75Y",
                    text: "Miley Cyrus - Flowers ",
                    subtext: "Miely Cyrus",
                    appbartext: 'Miley Cyrus - Flowers ',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
