import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:notes_app/models/note_model/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomeNoteItem extends StatelessWidget {
  const CustomeNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(
              note: note,
            ),
          ),
        );
        // Navigator.of(context).pushNamed('edit_notes',arguments: note);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              // trailing: IconButton(
              //   onPressed: () {
              //     note.delete();
              //     BlocProvider.of<ShowNotesCubit>(context).fetchNotes();
              //   },
              //   // icon: Icon(FontAwesomeIcons.trash,color: Colors.black.withOpacity(.7),size: 26,),
              // ),
            ),
            Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
