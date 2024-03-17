part of 'show_notes_cubit.dart';

@immutable
sealed class ShowNotesState {}

final class ShowNotesInitial extends ShowNotesState {}

// final class ShowNotesLoading extends ShowNotesState {}

// final class ShowNotesSuccess extends ShowNotesState {
//   final List<NoteModel> notes;
  
//   ShowNotesSuccess({
//     required this.notes,
//   });
// }

// final class ShowNotesFailure extends ShowNotesState {
//   final String errorMessage;

//   ShowNotesFailure({required this.errorMessage});
// }
