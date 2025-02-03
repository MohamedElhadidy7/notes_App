part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSucsess extends NotesCubitState {
  final List<NoteModel> notes;
  NotesCubitSucsess(
    this.notes,
  );
}

final class NotesCubitFaliure extends NotesCubitState {
  final String error;
  NotesCubitFaliure(this.error);
}
