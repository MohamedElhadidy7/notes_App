import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Notes_view(),
    );
  }
}
