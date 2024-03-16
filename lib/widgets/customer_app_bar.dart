import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
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
        customeIcon(icon: icon),
      ],
    );
  }

  Container customeIcon({required IconData icon}) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(15),
        ),
        child:IconButton(
          onPressed: (){},
          icon: Icon(
              icon,
              size:34 ,
          ),
        ),
      );
  }
}
