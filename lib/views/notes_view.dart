import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Cubits/notesCubit/notes_cubit_cubit.dart';
import 'package:noteapptharwat/views/Widgets/Add_noteButtomSheet.dart';
import 'package:noteapptharwat/views/Widgets/Notes_View_body.dart';

class Notes_view extends StatelessWidget {
  const Notes_view({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return AddnoteButtomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
