import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/utils/constant.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';

part 'view_notes_state.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());

  fetchNotes() {
    emit(ViewNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes = notesBox.values.toList();
      emit(ViewNoteSuccess(notes: notes));
    } catch (e) {
      emit(ViewNoteFailure(errorMessage: e.toString()));
    }
  }
}
