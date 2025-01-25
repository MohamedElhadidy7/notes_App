import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Custom_Textfield.dart';
import 'package:noteapptharwat/views/Widgets/Custom_appBar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomAppBar(
              appbarTittle: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'Tittle'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
