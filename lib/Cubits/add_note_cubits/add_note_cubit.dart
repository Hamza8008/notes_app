import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/Note_Model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) {}
}
