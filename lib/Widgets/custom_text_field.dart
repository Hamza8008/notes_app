import 'package:flutter/material.dart';
import 'package:noteapp/constansts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.maxLines = 1,
    this.onSaved,
  });

  final String labelText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please data';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
