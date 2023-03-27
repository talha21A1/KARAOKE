// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Circle extends StatelessWidget {
  String asset;
  void Function()? ontapp;
  Circle({
    Key? key,
    required this.ontapp,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapp,
      child: CircleAvatar(
        backgroundImage: AssetImage(asset),
        backgroundColor: Colors.greenAccent,
        radius: 50,
      ),
    );
  }
}
