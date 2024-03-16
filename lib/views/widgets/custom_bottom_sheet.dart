import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_form.dart';

class CustomeBottomSheet extends StatefulWidget {
  const CustomeBottomSheet({super.key});

  @override
  State<CustomeBottomSheet> createState() => _CustomeBottomSheetState();
}

class _CustomeBottomSheetState extends State<CustomeBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child:  CustomeForm(nameButton: 'Add'),
      ),
    );
  }
}