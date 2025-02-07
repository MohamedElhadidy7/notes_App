import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Colors_item.dart';
import 'package:noteapptharwat/views/Widgets/addnoteForm.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentindex = 0;
  List<Color> colors = [
    Color(0xff484041),
    Color(0xff434371),
    Color(0xff79AEA3),
    Color(0xff70EE9C),
    Color(0xffB5F44A)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    currentindex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    color: colors[index],
                    isactive: currentindex == index,
                  ),
                ),
              )),
    );
  }
}
