// ignore_for_file: avoid_print

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes/add_notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_form.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({super.key});

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16.0,
          right: 16.0,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              Navigator.of(context).pop();
            }
            if (state is AddNotesFailure) {
              AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  title: state.errorMessage,
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ));
            }
          },
          builder: (context, state) {
            return const SingleChildScrollView(
              child: CustomeForm(
                nameButton: 'Add',
              ),
            );
          },
        ),
      ),
    );
  }
}
