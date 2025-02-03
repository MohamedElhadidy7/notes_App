import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Cubits/AddNote_Cubit/add_note_cubit.dart';
import 'package:noteapptharwat/Models/Note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    try {
      final notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notesList = notesBox.values.toList();
      emit(NotesCubitSucsess(notesList));
    } on Exception catch (e) {
      emit(NotesCubitFaliure(e.toString()));
    }
  }
}
