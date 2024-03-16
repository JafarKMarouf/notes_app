import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_form.dart';

class CustomeBottomSheet extends StatefulWidget {
  const CustomeBottomSheet({super.key});

  @override
  State<CustomeBottomSheet> createState() => _CustomeBottomSheetState();
}

class _CustomeBottomSheetState extends State<CustomeBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: const CustomeForm(nameButton: 'Add'),
        ),
      ),
    );
  }
}