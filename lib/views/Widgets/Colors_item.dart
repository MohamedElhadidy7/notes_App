// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    this.isactive = true,
    required this.color,
  }) : super(key: key);
  final bool isactive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 32,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}
