import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class CustomeBottomSheet extends StatelessWidget {
  const CustomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextFormField(hint: 'title'),
          SizedBox(height: 16,),
          CustomTextFormField(hint: 'content',maxLines: 5,),
          SizedBox(height: 32,),
          CustomeButton(),
        ],
      ),
    );
  }


}