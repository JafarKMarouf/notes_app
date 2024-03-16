import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class CustomeForm extends StatefulWidget {
  const CustomeForm({super.key, required this.nameButton});
  final String nameButton;
  @override
  State<CustomeForm> createState() => _CustomeFormState();
}

class _CustomeFormState extends State<CustomeForm> {
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
          const SizedBox(height: 32,),
          CustomTextFormField(
            hint: 'title',
            onSaved: (value){
              title = value;
           },
          ),
          const SizedBox(height: 8,),
          CustomTextFormField(
            hint: 'content',
            maxLines: 5,
            onSaved: (value){
              subTitle = value;
            },
          ),
          const SizedBox(height: 32,),
          CustomeButton(
            name: widget.nameButton,
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autovalidate = AutovalidateMode.always;
                setState(() {
                });
              }
            },
          ),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
