import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/custom_app_bar.dart';
import 'package:noteapp/Widgets/notes_list_views.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          // SizedBox(
          //   height: 50,
          // ),
          CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
