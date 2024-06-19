import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,this.maxLines = 1});

  final String hint ;
  final int maxLines ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
          fontSize: 18.5,
            fontWeight: FontWeight.bold,
        ),
        border: builerBorder(),
        enabledBorder: builerBorder(),
        focusedBorder: builerBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder builerBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white)
  );
}

}
