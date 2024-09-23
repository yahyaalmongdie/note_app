import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/utils/constant.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote({required NoteModel noteModel}) async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(noteModel);
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
