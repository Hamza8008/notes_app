import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/Note_Model.dart';
import 'package:noteapp/constansts.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      var notesBok = notesBox.values.toList();
      emit(NotesCubitSuccess(notesBok));
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
