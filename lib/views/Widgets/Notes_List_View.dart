import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: NoteItem(),
          ),
        ),
      ),
    );
  }
}
