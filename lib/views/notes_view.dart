import 'package:flutter/material.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/views/Widgets/Add_noteButtomSheet.dart';
import 'package:noteapptharwat/views/Widgets/Notes_View_body.dart';

class Notes_view extends StatelessWidget {
  const Notes_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddnoteButtomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
