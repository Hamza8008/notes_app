import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/custom_bottom.dart';
import 'package:noteapp/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              labelText: 'Title',
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              labelText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 80,
            ),
            CustomButtom(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
