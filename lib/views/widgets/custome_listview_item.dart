import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:notes_app/models/note_model/note_model.dart';
import 'package:notes_app/views/widgets/custome_note_item.dart';

class CustomeListViewItem extends StatelessWidget {
  const CustomeListViewItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNotesCubit, ShowNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ShowNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child:notes.isNotEmpty ?  ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.symmetric(vertical: 8),
                child: CustomeNoteItem(
                  note: notes[index],
                ) ,
              );
            },
          ): const Center(
            child:Text('Not Found notes yet')
          ),
        );
      },
    );
  }
}
