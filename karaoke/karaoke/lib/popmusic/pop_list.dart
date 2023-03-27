import 'package:flutter/material.dart';
import 'package:karaoke/widget/list_widget.dart';
import 'package:karaoke/youtube_player.dart';

class PopSongs extends StatefulWidget {
  const PopSongs({super.key});

  @override
  State<PopSongs> createState() => _PopSongsState();
}

class _PopSongsState extends State<PopSongs> {
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
        ));
  }
}
