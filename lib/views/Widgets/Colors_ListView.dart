import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Colors_item.dart';
import 'package:noteapptharwat/views/Widgets/addnoteForm.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const ColorItem()),
    );
  }
}
