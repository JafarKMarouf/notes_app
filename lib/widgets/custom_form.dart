import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class CustomeForm extends StatelessWidget {
  const CustomeForm({super.key, required this.nameButton});
  final String nameButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32,),
        const CustomTextFormField(hint: 'title'),
        const SizedBox(height: 8,),
        const CustomTextFormField(hint: 'content',maxLines: 5,),
        const SizedBox(height: 32,),
        CustomeButton(name: nameButton,),
        const SizedBox(height: 16,),
      ],
    );
  }
}
