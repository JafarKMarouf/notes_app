import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key, required this.title, required this.icon,this.onPressed});
  final String title;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
       Text(
          title,
          style:const TextStyle(
            fontSize:28,
          ),
        ),
        const Spacer(),
        customeIcon(icon: icon,onPressed: onPressed),
      ],
    );
  }

  Container customeIcon({required IconData icon,Function()? onPressed}) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(15),
        ),
        child:IconButton(
          onPressed: onPressed,
          icon: Icon(
              icon,
              size:34 ,
          ),
        ),
      );
  }
}
