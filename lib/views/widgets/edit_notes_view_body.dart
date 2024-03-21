import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:notes_app/models/note_model/note_model.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';
import 'package:notes_app/views/widgets/customer_app_bar.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key,required this.note});
  final NoteModel note;
  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24.0),
      child:  Column(
        children:[
          const SizedBox(height: 60,),
         CustomeAppBar(
           title: 'Edit Notes',
           icon: Icons.check,
           onPressed: (){
             widget.note.title = title ?? widget.note.title;
             widget.note.subTitle = subtitle ?? widget.note.subTitle;
             Navigator.pop(context);
             BlocProvider.of<ShowNotesCubit>(context).fetchNotes();
           },
         ),
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
            hint: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value){
              subtitle = value;
            },
          ),
        ],
      ),
    );
  }
}
