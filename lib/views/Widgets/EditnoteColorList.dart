import 'package:flutter/material.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Models/Note_model.dart';
import 'package:noteapptharwat/views/Widgets/Colors_item.dart';

class EditnoteColorsList extends StatefulWidget {
  const EditnoteColorsList({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;

  @override
  State<EditnoteColorsList> createState() => _EditnoteColorsListState();
}

class _EditnoteColorsListState extends State<EditnoteColorsList> {
  late int currentindex;
  @override
  void initState() {
    currentindex = Kcolors.indexOf(Color(widget.note.Color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: Kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    currentindex = index;
                    widget.note.Color = Kcolors[index].value;

                    setState(() {});
                  },
                  child: ColorItem(
                    color: Kcolors[index],
                    isactive: currentindex == index,
                  ),
                ),
              )),
    );
    ;
  }
}
