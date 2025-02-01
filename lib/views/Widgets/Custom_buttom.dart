import 'package:flutter/material.dart';
import 'package:noteapptharwat/Constants.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: const Center(
            child: Text(
          'Add Note',
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
