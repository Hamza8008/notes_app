import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/custom_app_bar.dart';
import 'package:noteapp/Widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          CustomAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextField(labelText: 'Title'),
          SizedBox(
            height: 20,
          ),
          CustomTextField(labelText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
