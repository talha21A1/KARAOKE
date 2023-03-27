import 'package:flutter/material.dart';

import 'package:karaoke/utilities/color.dart';

class MyWidget extends StatelessWidget {
  double width;
  String img;
  String title;
  void Function()? ontapp;
  MyWidget({
    Key? key,
    required this.ontapp,
    required this.width,
    required this.img,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapp,
      child: Container(
          decoration: BoxDecoration(
              color: Col.colorr, borderRadius: BorderRadius.circular(17)),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12),
                child: Image.asset(img),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Col.color,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "100k+ Songs",
                        style: TextStyle(
                          color: Col.color,
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
