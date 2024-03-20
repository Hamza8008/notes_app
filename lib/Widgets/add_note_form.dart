import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/add_note_cubits/add_note_cubit.dart';
import 'package:noteapp/Models/Note_Model.dart';
import 'package:noteapp/Widgets/custom_bottom.dart';
import 'package:noteapp/Widgets/custom_text_field.dart';
import 'package:noteapp/constansts.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            labelText: 'Title',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            labelText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 80,
          ),
          CustomButtom(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: kPrimaryColor.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
