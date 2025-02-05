import 'package:flutter/material.dart';
import 'package:noteapptharwat/Models/Note_model.dart';
import 'package:noteapptharwat/views/Widgets/Edit_view_body.dart';

class EditnoteView extends StatelessWidget {
  const EditnoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(
        note: note,
      ),
    );
  }
}
