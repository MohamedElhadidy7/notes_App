import 'package:flutter/material.dart';
import 'package:noteapptharwat/views/Widgets/Custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.appbarTittle, required this.icon});
  final String appbarTittle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appbarTittle,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
