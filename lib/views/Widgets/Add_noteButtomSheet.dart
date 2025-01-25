import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Custom_Textfield.dart';

class AddnoteButtomSheet extends StatelessWidget {
  const AddnoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
