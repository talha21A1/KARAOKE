// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:karaoke/youtube_player.dart';

class ListWidget extends StatelessWidget {
  double height;
  double width;
  String url;
  String appbartext;
  String text;
  String subtext;

  ListWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.url,
    required this.appbartext,
    required this.text,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => PlayVideoFromNetwork(
                    url: url,
                    text: appbartext,
                  ))));
        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(text),
            subtitle: Text(subtext),
          ),
        ),
      ),
    );
  }
}
