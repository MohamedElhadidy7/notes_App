import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Custom_Textfield.dart';
import 'package:noteapptharwat/views/Widgets/Custom_buttom.dart';

class AddnoteButtomSheet extends StatelessWidget {
  const AddnoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: 'Tittle',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            Custombuttom(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
