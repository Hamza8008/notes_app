import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff55EED9),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        shape: CircleBorder(),
      ),
      body: NotesViewBody(),
    );
  }
}
