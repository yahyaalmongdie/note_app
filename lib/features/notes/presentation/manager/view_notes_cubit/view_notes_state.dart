part of 'view_notes_cubit.dart';

@immutable
sealed class ViewNotesState {}

final class ViewNotesInitial extends ViewNotesState {}

final class ViewNoteLoading extends ViewNotesState {}

final class ViewNoteFailure extends ViewNotesState {
  final String errorMessage;

  ViewNoteFailure({required this.errorMessage});
}

final class ViewNoteSuccess extends ViewNotesState {
  final List<NoteModel> notes;

  ViewNoteSuccess({required this.notes});
}
