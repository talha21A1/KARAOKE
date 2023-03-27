import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:karaoke/utilities/color.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: height,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.blue, Colors.purple])),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 66),
            child: Column(
              children: [
                Text(
                  "Instruction / How to use",
                  style: TextStyle(fontSize: 17, color: Col.color),
                ),
                Divider(
                  color: Colors.black,
                  height: 18,
                  thickness: 2,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "1.When you using Headphones for record your  Karoke,Remember to increase your PHONE volumne TO 100% Otherwise, Background Music does  not Record.",
                  style: TextStyle(fontSize: 17, color: Col.color),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "2.You can also record karaoke without using  Headphone.When you are recording karoke \n without using headphone Please Set your PHONE VOLUME to 50% for better ajustment with VOICE &  Background Music. ",
                  style: TextStyle(fontSize: 17, color: Col.color),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "3.If your VOICE & BACKGROUND MUSIC does not adjust properly, then You can Adjust your Voice  & Background MUSIC by changing your PHONE VOLUME after start the records.",
                  style: TextStyle(fontSize: 17, color: Col.color),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "4.You can  also Set your Default Volume by using  SETTING OPTION",
                  style: TextStyle(fontSize: 17, color: Col.color),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "5.YOUR kAROKE Recordings save as WAV format on  your phone memory  folder inside .If your  karaoke not plays,please try with different music player. ",
                  style: TextStyle(fontSize: 17, color: Col.color),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "6.If you face any kind of probabably by using our app  contact us immediately . We are always ready to help  you.",
                  style: TextStyle(fontSize: 17, color: Col.color),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
