import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class CustomeNoteItem extends StatelessWidget {
  const CustomeNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black,fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
              child: Text(
                'Build Your career with Jafar Marouf',
                style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash,color: Colors.black.withOpacity(.7),size: 26,),
            ),
          ),
          Text(
            'May21,2022',
            style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),
          ),
        ],
      ),
    );
  }
}
