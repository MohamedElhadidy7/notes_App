import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapptharwat/Cubits/AddNote_Cubit/add_note_cubit.dart';
import 'package:noteapptharwat/views/Widgets/Custom_Textfield.dart';
import 'package:noteapptharwat/views/Widgets/Custom_buttom.dart';
import 'package:noteapptharwat/views/Widgets/addnoteForm.dart';

class AddnoteButtomSheet extends StatelessWidget {
  const AddnoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFaliure) {
              print('failed');
            }
            if (state is AddNoteSucsess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              //بيخلي الابلكيشن يتعلق لما يكون الحاله معلقه
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: const AddNoteForm()),
              ),
            );
          },
        ),
      ),
    );
  }
}
