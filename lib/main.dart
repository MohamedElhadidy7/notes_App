import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Notes_view(),
    );
  }
}
