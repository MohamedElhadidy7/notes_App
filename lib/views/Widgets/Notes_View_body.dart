import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Custom_appBar.dart';

import 'package:noteapptharwat/views/Widgets/Notes_List_View.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomAppBar(
              icon: Icons.search,
              appbarTittle: 'Note',
            ),
            SizedBox(
              height: 20,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
