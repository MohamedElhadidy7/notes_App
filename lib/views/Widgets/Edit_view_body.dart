// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapptharwat/Cubits/notesCubit/notes_cubit_cubit.dart';

import 'package:noteapptharwat/Models/Note_model.dart';
import 'package:noteapptharwat/views/Widgets/Custom_Textfield.dart';
import 'package:noteapptharwat/views/Widgets/Custom_appBar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.title;
                widget.note.save();
                BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              appbarTittle: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
                onChanged: (val) {
                  title = val;
                },
                hint: widget.note.title),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (val) {
                content = val;
              },
              hint: widget.note.subtitle,
              maxlines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
