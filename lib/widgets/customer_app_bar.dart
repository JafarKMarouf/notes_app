import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children:[
       const Text(
          'Notes',
          style:TextStyle(
            fontSize:28,
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(15),
          ),
          child:IconButton(
            onPressed: (){},
            icon: const Icon(
                Icons.search,
                size:34 ,
            ),
          ),
        ),
      ],
    );
  }
}
