import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Models/Note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSucsess());
      await notesBox.add(note);
    } on Exception catch (e) {
      AddNoteFaliure(e.toString());
    }
  }
}
