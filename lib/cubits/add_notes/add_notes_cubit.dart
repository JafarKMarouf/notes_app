import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color = const Color(0xff2DFA6A);

  addNotes(NoteModel noteModel) async {
    noteModel.color = color.value;
    emit(AddNotesLoading());
    try {
      var notes = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await notes.add(noteModel);
    } catch (e) {
      emit(AddNotesFailure(errorMessage: e.toString()));
    }
  }
}
