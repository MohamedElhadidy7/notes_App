import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapptharwat/Constants.dart';
import 'package:noteapptharwat/Cubits/AddNote_Cubit/add_note_cubit.dart';
import 'package:noteapptharwat/Models/Note_model.dart';
import 'package:noteapptharwat/views/Widgets/Colors_ListView.dart';
import 'package:noteapptharwat/views/Widgets/Custom_Textfield.dart';
import 'package:noteapptharwat/views/Widgets/Custom_buttom.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? tittle, subtittle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              tittle = value;
            },
            hint: 'Tittle',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (calue) {
              subtittle = calue;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          ColorsListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Custombuttom(
                isloading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    var currentdate = DateTime.now();
                    var formatedcurrentdate =
                        DateFormat.yMd().format(currentdate);
                    var notemodel = NoteModel(
                      title: tittle!,
                      subtitle: subtittle!,
                      date: formatedcurrentdate,
                      Color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  } else {
                    _autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
