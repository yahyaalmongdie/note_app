import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';

part 'view_notes_state.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());

}
