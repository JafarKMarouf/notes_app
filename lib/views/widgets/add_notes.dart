import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubit.dart';
import 'package:notes_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:notes_app/models/note_model/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

import 'color_list_view.dart';

class AddNoteView extends StatefulWidget {
  const AddNoteView({super.key, required this.nameButton});
  final String nameButton;
  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState extends State<AddNoteView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidate = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hint: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
            hint: 'content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const ColorListItem(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNotesCubit,AddNotesState>(
            builder:(context,state) => CustomeButton(
              isLoading: state is AddNotesLoading ? true : false,
              name: widget.nameButton,
              onTap: () {
                var currentDateTime = DateTime.now();
                var formatCurrentDateTime = DateFormat('yy-MM-d').format(currentDateTime);
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var note = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: formatCurrentDateTime.toString(),
                    color: BlocProvider.of<AddNotesCubit>(context).color.value ,
                  );
                  BlocProvider.of<AddNotesCubit>(context).addNotes(note);
                  BlocProvider.of<ShowNotesCubit>(context).fetchNotes();

                } else {
                  autovalidate = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

