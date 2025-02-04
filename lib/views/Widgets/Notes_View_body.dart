import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapptharwat/Cubits/notesCubit/notes_cubit_cubit.dart';
import 'package:noteapptharwat/views/Widgets/Custom_appBar.dart';

import 'package:noteapptharwat/views/Widgets/Notes_List_View.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
    super.initState();
  }

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
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
