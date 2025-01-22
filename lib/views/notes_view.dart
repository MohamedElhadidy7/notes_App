import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Notes_View_body.dart';

class Notes_view extends StatelessWidget {
  const Notes_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
    );
  }
}
