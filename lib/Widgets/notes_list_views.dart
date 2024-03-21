import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/Models/Note_Model.dart';
import 'package:noteapp/Widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
        return Expanded(
          child: ListView.builder(
            itemCount: notesList.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: NoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}
