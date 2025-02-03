import 'package:flutter/material.dart';
import 'package:noteapptharwat/Constants.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isloading
                ? const SizedBox(
                    height: 28,
                    width: 28,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : const Text(
                    'Add Note',
                    style: TextStyle(fontSize: 20),
                  )),
      ),
    );
  }
}
