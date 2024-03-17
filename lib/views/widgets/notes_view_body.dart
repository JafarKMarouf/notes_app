import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:notes_app/models/note_model/note_model.dart';
import 'package:notes_app/views/widgets/custome_listview_item.dart';
import 'package:notes_app/views/widgets/customer_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  final bool isLoading = false;

  @override
  void initState() {
    BlocProvider.of<ShowNotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomeAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: CustomeListViewItem(),
          ),
        ],
      ),
    );
  }
}
