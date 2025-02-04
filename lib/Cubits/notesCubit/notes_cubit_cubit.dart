import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Cubits/AddNote_Cubit/add_note_cubit.dart';
import 'package:noteapptharwat/Models/Note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  List<NoteModel>? notesList;
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    final notesBox = Hive.box<NoteModel>(kNotesBox);

    notesList = notesBox.values.toList();
  }
}
