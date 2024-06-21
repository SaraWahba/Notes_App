part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {
  List<NoteModel> notes;
  AddNoteSuccess(this.notes);
}

class AddNoteFailure extends NotesState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}