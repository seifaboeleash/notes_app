part of 'add_note_cubit.dart';

abstract class AddNoteState {}

class addNoteInitial extends AddNoteState {}

class addNoteLoading extends AddNoteState {}

class addNoteSuccess extends AddNoteState {}

class addNoteFauilre extends AddNoteState {
  final String errorMessage;

  addNoteFauilre({required this.errorMessage});
}
