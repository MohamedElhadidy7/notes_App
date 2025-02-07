import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Models/Note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff484041);

  addNote(NoteModel note) async {
    note.Color = color.value;
    emit(AddNoteLoading());
    try {
      final notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSucsess());
    } on Exception catch (e) {
      emit(AddNoteFaliure(e.toString()));
    }
  }
}
