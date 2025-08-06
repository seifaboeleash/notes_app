part of 'notes_cubit.dart';

abstract class NotesState {}

class notesInitial extends NotesState {}

class notesLoading extends NotesState {}

class notesSuccess extends NotesState {
  final List<NoteModel> notes ;

  notesSuccess(this.notes);
}

class notesFauilre extends NotesState {
  final String errorMessage ;

  notesFauilre(this.errorMessage);
}