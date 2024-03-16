// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_form.dart';

class CustomeBottomSheet extends StatefulWidget {
  const CustomeBottomSheet({super.key});

  @override
  State<CustomeBottomSheet> createState() => _CustomeBottomSheetState();
}

class _CustomeBottomSheetState extends State<CustomeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              Navigator.of(context).pop();
            }
            if (state is AddNotesFailure) {
              print('====error${state.errorMessage}========');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: const CustomeForm(nameButton: 'Add'));
          },
        ),
      ),
    );
  }
}
