import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model/note_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesState> {
  ShowNotesCubit() : super(ShowNotesInitial());

  List<NoteModel>? notes;
  fetchNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();

    // try {
    //   // emit(ShowNotesSuccess(notes: notes));
    // } catch (e) {
    //   emit(ShowNotesFailure(errorMessage: e.toString()));
    // }
  }
}
