import 'package:flutter/material.dart';
import 'package:karaoke/widget/list_widget.dart';
import 'package:karaoke/youtube_player.dart';

class HipHop extends StatefulWidget {
  const HipHop({super.key});

  @override
  State<HipHop> createState() => _HipHopState();
}

class _HipHopState extends State<HipHop> {
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
              url: "https://youtu.be/VF-FGf_ZZiI",
              text: "Steve Lacy - Bad Habit",
              subtext: "Steve Lacy",
              appbartext: "Steve Lacy - Bad Habit",
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/IXXxciRUMzE",
              text: "Lizzo - About Damn Time  ",
              subtext: "Lizzo Music",
              appbartext: "Lizzo - About Damn Time ",
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/j5uAR9w7LBg",
              text: " Nicki Minaj - Super Freaky Girl",
              subtext: "Nicki Minaj ",
              appbartext: 'Nicki Minaj - Super Freaky Girl',
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/rP09GUQFDFk",
              text: "Future - WAIT FOR U ",
              subtext: "Future",
              appbartext: ' Future - WAIT FOR U ',
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/yjki-9Pthh0",
              text: "Beyoncé - BREAK MY SOUL",
              subtext: "Beyoncé ",
              appbartext: 'Beyoncé - BREAK MY SOUL',
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/yQBImEeXNZ4",
              text: "“Jack Harlow - First Class ",
              subtext: "Jack Harlow",
              appbartext: '“Jack Harlow - First Class  ',
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/4nyld2SqleU",
              text: "Drake & 21 Savage - Jimmy Cooks",
              subtext: "Drake",
              appbartext: 'Drake & 21 Savage - Jimmy Cooks',
            ),
            ListWidget(
              height: height * 0.1,
              width: width,
              url: "https://youtu.be/UXCtt53tqBQ",
              text: "Lil Baby - Detox ",
              subtext: "Lil Baby ",
              appbartext: 'Lil Baby - Detox ',
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
