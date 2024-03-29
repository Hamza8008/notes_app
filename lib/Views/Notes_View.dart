import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/Widgets/NotesViewBody.dart';
import 'package:noteapp/Widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff55EED9),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          // ignore: sort_child_properties_last
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          shape: const CircleBorder(),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
