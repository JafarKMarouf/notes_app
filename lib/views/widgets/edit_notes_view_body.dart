import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_notes.dart';
import 'package:notes_app/views/widgets/customer_app_bar.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key});

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24.0),
      child:  Form(
        key: formKey,
        child: const Column(
          children:[
            SizedBox(height: 60,),
            CustomeAppBar(title: 'Edit Notes', icon: Icons.check,),
            AddNoteView(nameButton: 'Edit'),
          ],
        ),
      ),
    );
  }
}
