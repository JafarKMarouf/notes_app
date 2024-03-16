import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key,required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor,
      ),
      child:  Center(
        child: Text(name,style:const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w700
        ),),
      ),
    );
  }
}
