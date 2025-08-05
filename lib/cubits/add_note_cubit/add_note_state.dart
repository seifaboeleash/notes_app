part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFauilre extends AddNoteState {
  final String errorMessage;

  AddNoteFauilre(this.errorMessage);
}
