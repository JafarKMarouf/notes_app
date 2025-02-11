import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.name,
    this.onTap,
    this.isLoading = false,
  });
  final String name;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child:  Center(
          child:  isLoading ? const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              color: Colors.black54,
            ),
          ):
            Text(
              name,
              style:const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
