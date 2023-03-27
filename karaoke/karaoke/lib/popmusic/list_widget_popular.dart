import 'package:flutter/material.dart';
import 'package:karaoke/widget/list_widget.dart';
import 'package:karaoke/youtube_player.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
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
            )
          ],
        ));
  }
}
